# TaiwaneseIdBuilder 台灣身分證字號驗證

## 安裝

Gemfile ：

```
gem 'taiwanese_id_builder'
```



執行

`bundle install`

## 使用

`TaiwaneseIdBuilder.valid?('A123456789') #=> true`

`TaiwaneseIdBuilder.valid?('A123456777') #=> false`

## LICENSE

This project rocks and uses MIT-LICENSE.