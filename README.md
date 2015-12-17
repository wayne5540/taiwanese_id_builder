
# This gem is deprecated and moved to [Taiwanese Id Validator](https://github.com/wayne5540/taiwanese_id_validator).


# [Deprecated] TaiwaneseIdBuilder 台灣身分證字號驗證

[公式](https://zh.wikipedia.org/wiki/%E4%B8%AD%E8%8F%AF%E6%B0%91%E5%9C%8B%E5%9C%8B%E6%B0%91%E8%BA%AB%E5%88%86%E8%AD%89)

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