function PopulateItemData()

	local kItemDefaults = {};		-- Table to return

	function GetHash(t)
		local r = GameInfo.Types[t];
		if(r) then
			return r.Hash;
		else
			return 0;
		end
	end

	local techNodes = UITree.GetAvailableTechs();
	print('RH_AI dummy techtree skipper loaded: -------------------------------------------------------------------');
	for _,techNode in ipairs(techNodes) do

		local row = GameInfo.Technologies[techNode.Name];
		-- print(row.TechnologyType);
		local found, _ = string.find(row.TechnologyType, '_RH_')
		if found then do print('SKIP TECH ' .. row.TechnologyType) end
        else
            local kEntry = {};
            kEntry.Type			= row.TechnologyType;
            kEntry.Name			= row.Name;
            kEntry.BoostText	= "";
            kEntry.Column		= -1;
            kEntry.Cost			= techNode.Cost;
            kEntry.Description	= row.Description and Locale.Lookup( row.Description );
            kEntry.EraType		= row.EraType;
            kEntry.Hash			= GetHash(kEntry.Type);
            kEntry.Index		= row.Index;
            kEntry.IsBoostable	= false;
            kEntry.Prereqs		= {};				-- IDs for prerequisite item(s)
            kEntry.UITreeRow	= techNode.TreeRow;
            kEntry.Unlocks		= {};				-- Each unlock has: unlockType, iconUnavail, iconAvail, tooltip

            -- Only add if not debugging or in debug range.
            if	((table.count(debugExplicitList) == 0 and debugFilterTechMaxIndex ==-1 ) or
                (table.count(debugExplicitList) == 0 and kEntry.Index < debugFilterTechMaxIndex) or
                (table.count(debugExplicitList) ~= 0 and debugExplicitList[kEntry.Index ] ~= nil)) and
                ((table.count(debugExcludeList) == 0) or debugExcludeList[kEntry.Index] == nil) then

                -- Boost?
                for boostRow in GameInfo.Boosts() do
                    if boostRow.TechnologyType == kEntry.Type then
                        kEntry.BoostText = Locale.Lookup( boostRow.TriggerDescription );
                        kEntry.IsBoostable = true;
                        kEntry.BoostAmount = boostRow.Boost;
                        break;
                    end
                end

                if (table.count(techNode.PrereqTechTypes) > 0) then
                    for __,prereqTechType in ipairs(techNode.PrereqTechTypes) do
                        local prereqRow = GameInfo.Technologies[prereqTechType];
                        table.insert( kEntry.Prereqs, prereqRow.TechnologyType );
                    end
                end
                -- If no prereqs were found, set item to special tree start value
                if table.count(kEntry.Prereqs) == 0 then
                    table.insert(kEntry.Prereqs, PREREQ_ID_TREE_START);
                end

                -- Warn if DB has an out of bounds entry.
                if kEntry.UITreeRow < ROW_MIN or kEntry.UITreeRow > ROW_MAX then
                    UI.DataError("UITreeRow for '"..kEntry.Type.."' has an out of bound UITreeRow="..tostring(kEntry.UITreeRow).."  MIN="..tostring(ROW_MIN).."  MAX="..tostring(ROW_MAX));
                end

                AddTechToEra( kEntry );

                -- Save entry into master list.
                kItemDefaults[kEntry.Type] = kEntry;
            end
        end
	end

	return kItemDefaults;
end