/**
 * @Description:
 * @Author: fuwensong
 * @Date: 2015/5/9
 */
var Model = require('../base/model');

module.exports = Model.extend({
  name: 'DeliveryAddresses',
  plural: 'user-delivery-addresses',
  initialize: function () {
  },
  relations: {
    users: {
      foreignKey: 'userId',
      humpTypePlural: 'deliveryAddresses'
    }
  }
});