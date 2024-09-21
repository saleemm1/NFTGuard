pragma solidity 0.8.19;

import { CCIPReceiver } from "@chainlink/contracts-ccip/src/v0.8/ccip/applications/CCIPReceiver.sol";
import { Client } from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";
import { BGNFT } from "./BGNFT.sol";

/**
 * THIS IS AN EXAMPLE CONTRACT THAT USES HARDCODED VALUES FOR CLARITY.
 * THIS IS AN EXAMPLE CONTRACT THAT USES UN-AUDITED CODE.
 * DO NOT USE THIS CODE IN PRODUCTION.
 */
contract DestinationMinter is CCIPReceiver {
	BGNFT nft;

	event MintCallSuccessfull();

	constructor(address router, address nftAddress) CCIPReceiver(router) {
		nft = BGNFT(nftAddress);
	}

	function _ccipReceive(
		Client.Any2EVMMessage memory message
	) internal override {
		(bool success, ) = address(nft).call(message.data);
		require(success);
		emit MintCallSuccessfull();
	}
}
