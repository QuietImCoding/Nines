function setNativeValue(element, value) {
    let lastValue = element.value;
    element.value = value;
    let event = new Event("input", { target: element, bubbles: true });
    // React 15
    event.simulated = true;
    // React 16
    let tracker = element._valueTracker;
    if (tracker) {
        tracker.setValue(lastValue);
    }
    element.dispatchEvent(event);
}

var infile=document.querySelector('#media').value;
var fname = infile.substring(infile.lastIndexOf("\\")+1, infile.length);
[id, shape, fg, bg] = fname.split('.');

setNativeValue(document.querySelector('#name'),
	       `Piece ${id}`);
setNativeValue(document.querySelector('#description'),
	       `The ${id}${id % 10 == 2 ? 'nd' : id % 10 == 3 ? 'rd' : 'th'} piece of Nines`);

// Pop open modal
document.querySelectorAll('div.AssetFormTraitSectionreact__DivContainer-sc-j28e67-0:nth-child(1) > div:nth-child(1) > div:nth-child(2)')[0].firstChild.click();

// Create add two properties
document.querySelector('button.Blockreact__Block-sc-1xf18x6-0:nth-child(3)').click();
document.querySelector('button.Blockreact__Block-sc-1xf18x6-0:nth-child(3)').click();

setNativeValue(document.querySelector('tr.AssetPropertiesFormreact__TrContainer-sc-g5scfi-0:nth-child(1) > td:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(3)'), 'Shape');
setNativeValue(document.querySelector('tr.AssetPropertiesFormreact__TrContainer-sc-g5scfi-0:nth-child(2) > td:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(3)'), 'Foreground');
setNativeValue(document.querySelector('tr.AssetPropertiesFormreact__TrContainer-sc-g5scfi-0:nth-child(3) > td:nth-child(1) > div:nth-child(1) > div:nth-child(1) > input:nth-child(3)'),'Background');

setNativeValue(document.querySelector('tr.AssetPropertiesFormreact__TrContainer-sc-g5scfi-0:nth-child(1) > td:nth-child(2) > div:nth-child(1) > div:nth-child(1) > input:nth-child(2)'), shape[0].toUpperCase() + shape.substr(1));
setNativeValue(document.querySelector('tr.AssetPropertiesFormreact__TrContainer-sc-g5scfi-0:nth-child(2) > td:nth-child(2) > div:nth-child(1) > div:nth-child(1) > input:nth-child(2)'), fg[0].toUpperCase() + fg.substr(1));
setNativeValue(document.querySelector('tr.AssetPropertiesFormreact__TrContainer-sc-g5scfi-0:nth-child(3) > td:nth-child(2) > div:nth-child(1) > div:nth-child(1) > input:nth-child(2)'), bg[0].toUpperCase() + bg.substr(1));

document.querySelector('footer.Blockreact__Block-sc-1xf18x6-0 > button:nth-child(1)').click();
document.querySelector('.gMiESj').click();
