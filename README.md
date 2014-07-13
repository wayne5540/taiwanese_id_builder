# TaiwaneseIdBuilder 台灣身分證字號驗證

## 安裝

Gemfile：

```
gem 'taiwanese_id_builder'
```

執行

```
bundle install`
```

## 驗證身分證字號

```
TaiwaneseIdBuilder.valid?('A123456789') #=> true
```

```
TaiwaneseIdBuilder.valid?('A123456777') #=> false
```
## 產生身分證字號

```
TaiwaneseIdBuilder.generate #=> 隨機產生身分證字號
```

```
TaiwaneseIdBuilder.generate("male") #=> 男性的身分證字號
```

```
TaiwaneseIdBuilder.generate("female") #=> 女性的身分證字號
```

## LICENSE

This project rocks and uses MIT-LICENSE.