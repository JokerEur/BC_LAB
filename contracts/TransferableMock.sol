pragma solidity >=0.4.25 <0.7.0;



contract TransferableMock is Transferable {

    function onlyTransferableCanDoThis() public onlyTransferable {
    }
}
