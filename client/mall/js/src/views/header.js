/**
 * @Description:
 * @Author: fuwensong
 * @Date: 2015/5/9
 * @Company: China EKai
 * @Copyright: All rights Reserved, Designed By EKai
 *               Copyright(C) 2005-2014
 */
var _ = require('underscore');
var View = require('../base/view');
var template = require('../templates/header.tpl');

module.exports = View.extend({
  role: 'header',
  tagName: 'header',
  className: 'header clearfix',
  template: _.template(template),

  initialize: function () {

  },
  render: function () {
    this.$el.empty();
    this.$el.html(this.template({}));
    return this;
  }
});