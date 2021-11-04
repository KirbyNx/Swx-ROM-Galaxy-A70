.class final Lcom/android/server/input/KeyboardLayoutUtils;
.super Ljava/lang/Object;
.source "KeyboardLayoutUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field static final INPUT_DEVICES_ATTR_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field static final INPUT_DEVICES_PKG_NAME:Ljava/lang/String; = "com.android.inputdevices"

.field private static final INPUT_METHOD_SEPARATER:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATER:C = ';'

.field static final SEC_IME_CMP_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field static final SEC_IME_PKG_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field static final SEC_LEGACY_IME_CMP_NAME:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field static final SEC_LEGACY_IME_PKG_NAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 38
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filterIfAvailableInputMethods(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 89
    .local p0, "enabledInputMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "available":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-nez p0, :cond_8

    .line 91
    return-object v0

    .line 93
    :cond_8
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .local v3, "componentName":Ljava/lang/String;
    const-string v4, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 96
    const-string v4, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 97
    :cond_32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v3    # "componentName":Ljava/lang/String;
    :cond_41
    goto :goto_10

    .line 100
    :cond_42
    return-object v0
.end method

.method static getDefaultKeyboardLayoutForSubtype(Landroid/view/inputmethod/InputMethodSubtype;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 16
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 159
    .local p1, "keyboardLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_be

    if-eqz p1, :cond_be

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_be

    .line 167
    :cond_d
    const/4 v1, 0x0

    .line 168
    .local v1, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "localeString":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_26

    .line 170
    new-instance v3, Ljava/util/Locale;

    aget-object v5, v2, v4

    invoke-direct {v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_34

    .line 171
    :cond_26
    array-length v3, v2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_34

    .line 172
    new-instance v3, Ljava/util/Locale;

    aget-object v6, v2, v4

    aget-object v5, v2, v5

    invoke-direct {v3, v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 175
    :cond_34
    :goto_34
    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto/16 :goto_bd

    .line 182
    :cond_42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v3, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/KeyboardLayout;

    .line 184
    .local v6, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 185
    .local v7, "locales":Landroid/os/LocaleList;
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v8

    .line 186
    .local v8, "numLocales":I
    const/4 v9, 0x0

    .local v9, "localeIndex":I
    :goto_60
    if-ge v9, v8, :cond_73

    .line 187
    invoke-virtual {v7, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/server/input/KeyboardLayoutUtils;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 188
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_73

    .line 186
    :cond_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    .line 192
    .end local v6    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "locales":Landroid/os/LocaleList;
    .end local v8    # "numLocales":I
    .end local v9    # "localeIndex":I
    :cond_73
    :goto_73
    goto :goto_4b

    .line 199
    :cond_74
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 203
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7c
    if-ge v6, v5, :cond_ac

    .line 204
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/KeyboardLayout;

    .line 205
    .local v7, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    .line 206
    .local v8, "locales":Landroid/os/LocaleList;
    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v9

    .line 207
    .local v9, "numLocales":I
    const/4 v10, 0x0

    .local v10, "localeIndex":I
    :goto_8d
    if-ge v10, v9, :cond_a9

    .line 208
    invoke-virtual {v8, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    .line 209
    .local v11, "locale":Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 213
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    .end local v11    # "locale":Ljava/util/Locale;
    :cond_a6
    add-int/lit8 v10, v10, 0x1

    goto :goto_8d

    .line 203
    .end local v7    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v8    # "locales":Landroid/os/LocaleList;
    .end local v9    # "numLocales":I
    .end local v10    # "localeIndex":I
    :cond_a9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 224
    .end local v6    # "i":I
    :cond_ac
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_bc

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    :cond_bc
    return-object v0

    .line 179
    .end local v3    # "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    .end local v5    # "N":I
    :cond_bd
    :goto_bd
    return-object v0

    .line 163
    .end local v1    # "subtypeLocale":Ljava/util/Locale;
    .end local v2    # "localeString":[Ljava/lang/String;
    :cond_be
    :goto_be
    return-object v0
.end method

.method static getEnabledInputMethodsAndSubtypes(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v0, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-nez p0, :cond_8

    .line 64
    return-object v0

    .line 66
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 67
    return-object v0

    .line 70
    :cond_f
    sget-object v1, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 71
    :goto_14
    sget-object v1, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 72
    sget-object v1, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "nextImsStr":Ljava/lang/String;
    sget-object v2, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 75
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v2, "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "imiId":Ljava/lang/String;
    :goto_3a
    sget-object v4, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 78
    sget-object v4, Lcom/android/server/input/KeyboardLayoutUtils;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 80
    :cond_4c
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v1    # "nextImsStr":Ljava/lang/String;
    .end local v2    # "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "imiId":Ljava/lang/String;
    :cond_4f
    goto :goto_14

    .line 84
    :cond_50
    return-object v0
.end method

.method static getEnabledSubtypeIdsOf(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashSet;
    .registers 3
    .param p0, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    .local p1, "imeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_b

    .line 120
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 121
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_b

    .line 122
    return-object v0

    .line 126
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .line 42
    .local p1, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 43
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 44
    return-object v1

    .line 46
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1b
    goto :goto_4

    .line 47
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method static getPackageNameFromCmpName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "componentName"    # Ljava/lang/String;

    .line 104
    if-nez p0, :cond_5

    .line 105
    const-string v0, ""

    return-object v0

    .line 107
    :cond_5
    const-string v0, "/."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getStringFromInputDevices(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "appRes"    # Landroid/content/res/Resources;
    .param p2, "attribute"    # Ljava/lang/String;

    .line 242
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    if-nez p2, :cond_7

    goto :goto_1b

    .line 245
    :cond_7
    const/4 v0, 0x0

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    invoke-interface {p0, v1, p2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "styleId":I
    if-nez v0, :cond_16

    .line 247
    invoke-interface {p0, v1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    :cond_16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 243
    .end local v0    # "styleId":I
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .line 229
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 230
    return v1

    .line 233
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 234
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 235
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 236
    return v1

    .line 238
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method static isSubtypeInEnabledList(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 3
    .param p0, "subtypeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 111
    .local p1, "enabledSubtypeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isSubtypeListChanged(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 130
    .local p0, "curSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p1, "prevSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 131
    return v0

    .line 133
    :cond_6
    const/4 v1, 0x1

    if-eqz p0, :cond_47

    if-nez p1, :cond_c

    goto :goto_47

    .line 137
    :cond_c
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 138
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "current":Ljava/lang/String;
    const/4 v4, 0x0

    .line 140
    .local v4, "equal":Z
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 141
    .local v6, "previous":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 142
    const/4 v4, 0x1

    .line 143
    goto :goto_40

    .line 145
    .end local v6    # "previous":Ljava/lang/String;
    :cond_3f
    goto :goto_2b

    .line 146
    :cond_40
    :goto_40
    if-nez v4, :cond_43

    .line 147
    return v1

    .line 149
    .end local v3    # "current":Ljava/lang/String;
    .end local v4    # "equal":Z
    :cond_43
    goto :goto_1a

    :cond_44
    nop

    .line 154
    return v0

    .line 151
    :cond_46
    return v1

    .line 134
    :cond_47
    :goto_47
    return v1
.end method
