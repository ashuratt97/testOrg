({
    updatOptions: function(c, h) {
        const valueSet = new Set(c.get("v.values").split(";"));
        const options = c.get("v.options");
        options.forEach(function(option) {
            if (valueSet.has(option.value)) {
                option.selected = true;
            } else {
                option.selected = false;
            }
        });
        c.set("v.options", options);
    },
    updatFilterOptions: function(c, h) {
        const valueSet = new Set(c.get("v.values").split(";"));
        const filterOptions = c.get("v.filterOptions");
        filterOptions.forEach(function(option) {
            if (valueSet.has(option.value)) {
                option.selected = true;
            } else {
                option.selected = false;
            }
        });
        c.set("v.filterOptions", filterOptions);
    },
    updatLabels: function(c, h) {
        const valueSet = new Set(c.get("v.values").split(";"));
        const labels = [];
        c.get("v.options").forEach(function(option) {
            if (valueSet.has(option.value)) labels.push(option.label);
        });
        c.set("v.labels", labels.join(','));
    },
    updatValues: function(c, h, selectedValue) {
        const valueSet = new Set(c.get("v.values").split(";"));
        c.get("v.options").forEach(function(option) {
            if (option.value === selectedValue) {
                if (valueSet.has(option.value)) valueSet.delete(option.value);
                else valueSet.add(option.value);
            }
        });
        valueSet.delete("");
        c.set("v.values", [...valueSet].join(';'));
        
        h.updatLabels(c, h);
        h.updatOptions(c, h);
        h.updatFilterOptions(c, h);
    },
    setFilterOptions: function(c) {
        let searchText = c.get("v.searchText") || "";
        searchText = searchText.trim();
        console.log('searchText: ', searchText);
        let options = c.get("v.options") || {};
        let filterOptions = options;
        if(searchText.length != 0 && options.length != 0){
            filterOptions = options.filter(x => x.label.includes(searchText) || x.value.includes(searchText));   
        }
        c.set("v.filterOptions", filterOptions);  
	}
})