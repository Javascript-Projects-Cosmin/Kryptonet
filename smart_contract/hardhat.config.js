require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/uW5jzx_Pn43hm73bCRFAhoc_kNdbVkyl',
      accounts: ['5f05046be98784d8eaad3406b8f4151dcb765ce342aa9cb158df913ed0b0c6d8'],
    },
  },
};