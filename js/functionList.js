function shiftCursor(n,v) {
    console.log("N=" + n + " V= "+ v);
    if(n === 0){
        pTimerr.firstItemValue = v;
        console.log(n);
    }
    else if(n ===1){
        txtHrSecondItem.text = v;
        console.log(n);
    }
    else if(n ===2){
        txtScFirstItem.text = v;
        console.log(n);
    }
    else{
        txtScSecondItem.text = v;
        return 0;
    }
    return ++n;
}
