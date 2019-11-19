--Start of Global Scope---------------------------------------------------------

-- Declaring storage for selected option in the UI
local selectedOption = '1'

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

-- Serving UI update event
Script.serveEvent("ToggleGroup.OptionSwitched", "OptionSwitched")

-- Setter function that also updates UI via event
--@selectedOptionChanged(option:string):
local function selectedOptionChanged(option)
  print ('Option switched to ' .. option)
  Script.notifyEvent("OptionSwitched", option)
  selectedOption = option
end
Script.serveFunction("ToggleGroup.selectedOptionChanged", selectedOptionChanged)

-- Getter function to retrieve value on page refresh
--@getSelectedOption():string
local function getSelectedOption()
  return selectedOption
end
Script.serveFunction("ToggleGroup.getSelectedOption", getSelectedOption)
--End of Function and Event Scope---------------------------------------------
