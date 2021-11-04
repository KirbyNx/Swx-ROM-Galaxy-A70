.class public Lcom/android/server/asks/ADPOperation;
.super Ljava/lang/Object;
.source "ADPOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AASA_ADPOperation_ADP"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainsList(Ljava/util/ArrayList;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5
    .param p1, "target"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ")Z"
        }
    .end annotation

    .line 231
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 233
    .local v1, "policy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    invoke-static {v1, p1}, Lcom/android/server/asks/ADPOperation;->isAbsolutelyEqual(Lcom/android/server/asks/ADPContainer$ADPPolicy;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 234
    const/4 v0, 0x1

    return v0

    .line 235
    .end local v1    # "policy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    :cond_18
    goto :goto_4

    .line 236
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static copyADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .registers 4
    .param p0, "object"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 145
    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;-><init>()V

    .line 146
    .local v0, "builder":Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    .line 148
    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;

    move-result-object v1

    return-object v1
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 252
    .local p0, "adpPolicy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    .local p1, "preList":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/Predicate<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;->INSTANCE:Lcom/android/server/asks/-$$Lambda$ADPOperation$qwzPpiQxrmnDKxWPcAMFM9Wvw-w;

    sget-object v3, Lcom/android/server/asks/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;->INSTANCE:Lcom/android/server/asks/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 248
    .local p0, "adpPolicy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .registers 6
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .param p1, "num"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 56
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 58
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_20

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 62
    .end local v2    # "i":I
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private static getRegexFromVType(I)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "vType"    # I

    .line 34
    const-string v0, ""

    .line 35
    .local v0, "pattern":Ljava/lang/String;
    if-eqz p0, :cond_17

    const/4 v1, 0x5

    if-eq p0, v1, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    goto :goto_1a

    .line 43
    :cond_e
    const-string v0, "^(\\d?\\d{4})\\d{2}(\\d{3})\\z"

    .line 44
    goto :goto_1a

    .line 40
    :cond_11
    const-string v0, "^(\\d?\\d{6})\\d{3}\\z"

    .line 41
    goto :goto_1a

    .line 46
    :cond_14
    const-string v0, "^(\\d?\\d{9})\\z"

    goto :goto_1a

    .line 37
    :cond_17
    const-string v0, "^(\\d?\\d{4})\\d{5}\\z"

    .line 38
    nop

    .line 49
    :goto_1a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1
.end method

.method private static isAbsolutelyEqual(Lcom/android/server/asks/ADPContainer$ADPPolicy;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5
    .param p0, "p1"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .param p1, "p2"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 215
    return v1

    .line 217
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 218
    return v1

    .line 220
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    if-eq v0, v2, :cond_2a

    .line 221
    return v1

    .line 223
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/asks/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 224
    return v1

    .line 226
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method public static isEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "vType"    # I
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 74
    .local v0, "regex":Ljava/util/regex/Pattern;
    invoke-static {v0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "convNum1":I
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_e

    .line 108
    .local v2, "convNum2":I
    nop

    .line 109
    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 105
    .end local v1    # "convNum1":I
    .end local v2    # "convNum2":I
    :catch_e
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 107
    return v0
.end method

.method public static isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/String;

    .line 209
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static isGreater(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "vType"    # I
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 68
    .local v0, "regex":Ljava/util/regex/Pattern;
    invoke-static {v0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "convNum1":I
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_e

    .line 94
    .local v2, "convNum2":I
    nop

    .line 95
    if-le v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 91
    .end local v1    # "convNum1":I
    .end local v2    # "convNum2":I
    :catch_e
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 93
    return v0
.end method

.method public static isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "vType"    # I
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lcom/android/server/asks/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 80
    .local v0, "regex":Ljava/util/regex/Pattern;
    invoke-static {v0, p1, p2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 5
    .param p0, "hCode"    # Ljava/lang/String;
    .param p1, "policy"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v1

    const v2, 0x65837583

    if-ne v1, v2, :cond_23

    .line 118
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    .line 119
    const/4 v0, 0x0

    goto :goto_2f

    .line 121
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2f

    .line 124
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 126
    :goto_2f
    return v0
.end method

.method public static isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "convNum1":I
    invoke-static {p0, p2}, Lcom/android/server/asks/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_e

    .line 139
    .local v2, "convNum2":I
    nop

    .line 140
    if-lt v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 136
    .end local v1    # "convNum1":I
    .end local v2    # "convNum2":I
    :catch_e
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 138
    return v0
.end method

.method public static isMatchPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "hCode"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 26
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 27
    .local v0, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 29
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public static isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "vCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/android/server/asks/-$$Lambda$ADPOperation$1G5yPuPS8ilQHG0z2FdmUA-dMRE;

    invoke-direct {v0, p0}, Lcom/android/server/asks/-$$Lambda$ADPOperation$1G5yPuPS8ilQHG0z2FdmUA-dMRE;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSameCategoryByPattern(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "ptn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Lcom/android/server/asks/-$$Lambda$ADPOperation$v4e4-7giXOPjSg-jOBPNPYVGqsY;

    invoke-direct {v0, p0}, Lcom/android/server/asks/-$$Lambda$ADPOperation$v4e4-7giXOPjSg-jOBPNPYVGqsY;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$filterADPPolicy$2(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 2
    .param p0, "x"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 3
    .param p0, "vCode"    # Ljava/lang/String;
    .param p1, "p"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 240
    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByHashCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isSameCategoryByPattern$1(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z
    .registers 3
    .param p0, "ptn"    # Ljava/lang/String;
    .param p1, "p"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 244
    invoke-virtual {p1, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->findMatcherByPattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static printADPContainer(Lcom/android/server/asks/ADPContainer;)V
    .registers 3
    .param p0, "container"    # Lcom/android/server/asks/ADPContainer;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[+] HASHVALUE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AASA_ADPOperation_ADP"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 168
    .local v1, "policy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    invoke-static {v1}, Lcom/android/server/asks/ADPOperation;->printADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)V

    .line 169
    .end local v1    # "policy":Lcom/android/server/asks/ADPContainer$ADPPolicy;
    goto :goto_22

    .line 170
    :cond_32
    return-void
.end method

.method public static printADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)V
    .registers 4
    .param p0, "policy"    # Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tpattern = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AASA_ADPOperation_ADP"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  hashCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  versionType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  format = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_68
    return-void
.end method

.method public static printDebug(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ADPContainer;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/asks/ADPContainer;>;"
    const-string v0, "AASA_ADPOperation_ADP"

    const-string/jumbo v1, "print adp container"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 176
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ADPContainer;

    .line 182
    .local v3, "container":Lcom/android/server/asks/ADPContainer;
    invoke-static {v3}, Lcom/android/server/asks/ADPOperation;->printADPContainer(Lcom/android/server/asks/ADPContainer;)V

    .line 183
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "container":Lcom/android/server/asks/ADPContainer;
    goto :goto_10

    .line 184
    :cond_26
    return-void
.end method

.method public static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 188
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 192
    .local v2, "element":Ljava/lang/Comparable;, "TT;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 197
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 198
    .local v3, "idx":I
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_35

    .line 200
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v2    # "element":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "idx":I
    :cond_35
    :goto_35
    goto :goto_9

    .line 205
    :cond_36
    return-object v0
.end method
