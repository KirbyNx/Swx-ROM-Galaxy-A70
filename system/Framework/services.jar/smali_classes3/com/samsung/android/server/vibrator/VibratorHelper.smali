.class public Lcom/samsung/android/server/vibrator/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field private static final PKG_ACT_ALWAYS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;


# instance fields
.field private final mActAlwaysPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibePatternHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/vibrator/PatternInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    sget-object v0, Lcom/samsung/android/vibrator/VibRune;->DND_EXCEPTION_PACKAGES:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mActAlwaysPackages:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 47
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    if-eqz v0, :cond_26

    .line 48
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "packageList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mActAlwaysPackages:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 51
    .end local v0    # "packageList":[Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private createPatternInfo(ILandroid/content/res/Resources;II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "resID"    # I
    .param p4, "value"    # I

    .line 113
    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/vibrator/PatternInfo;-><init>()V

    .line 114
    .local v0, "info":Lcom/samsung/android/server/vibrator/PatternInfo;
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->initPattern(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    .line 115
    iput p4, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->initEngineData(Landroid/content/res/Resources;I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    .line 118
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_44

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVibePatternHash.put("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pattern), mVibePatternHash.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_44
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;
    .registers 1

    .line 54
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-direct {v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 57
    :cond_b
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-object v0
.end method

.method private getIntArray(Landroid/content/res/Resources;I)[I
    .registers 8
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 83
    .local v0, "ar":[I
    const/4 v1, -0x1

    .line 84
    .local v1, "startEngineIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 85
    aget v3, v0, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 86
    add-int/lit8 v1, v2, 0x1

    .line 87
    goto :goto_14

    .line 84
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 90
    .end local v2    # "i":I
    :cond_14
    :goto_14
    if-gez v1, :cond_18

    .line 91
    const/4 v2, 0x0

    return-object v2

    .line 93
    :cond_18
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 95
    .local v2, "length":I
    new-array v3, v2, [I

    .line 96
    .local v3, "out":[I
    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-object v3
.end method

.method private getLongArray(Landroid/content/res/Resources;I)[J
    .registers 9
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 66
    .local v0, "ar":[I
    const/4 v1, 0x0

    .line 67
    .local v1, "length":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_15

    aget v4, v0, v3

    .line 68
    .local v4, "value":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 69
    goto :goto_15

    .line 71
    :cond_f
    nop

    .end local v4    # "value":I
    add-int/lit8 v1, v1, 0x1

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 73
    :cond_15
    :goto_15
    new-array v2, v1, [J

    .line 74
    .local v2, "out":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_22

    .line 75
    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 77
    .end local v3    # "i":I
    :cond_22
    return-object v2
.end method

.method private initEngineData(Landroid/content/res/Resources;I)[I
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    .line 106
    .local v0, "data":[I
    if-nez v0, :cond_d

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    return-object v1

    .line 109
    :cond_d
    return-object v0

    :array_e
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private initPattern(Landroid/content/res/Resources;I)[J
    .registers 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getLongArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;
    .registers 4
    .param p1, "index"    # I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    return-object v0
.end method

.method public getSupportedPatternSize()I
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public isAllowedPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mActAlwaysPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadPatternInfo(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    const v2, 0x10700fb

    const/4 v3, 0x4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 137
    const/4 v2, 0x2

    const v4, 0x10700fc

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 138
    const/4 v4, 0x3

    const v5, 0x10700fd

    invoke-direct {p0, v4, v0, v5, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 139
    const v5, 0x10700fe

    invoke-direct {p0, v3, v0, v5, v4}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 140
    const/4 v4, 0x5

    const v5, 0x10700ff

    invoke-direct {p0, v4, v0, v5, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 141
    const/4 v1, 0x6

    const v4, 0x1070100

    invoke-direct {p0, v1, v0, v4, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 142
    const/4 v1, 0x7

    const v3, 0x1070101

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 143
    const/16 v1, 0x8

    const v2, 0x1070102

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 144
    const/16 v1, 0x9

    const v2, 0x1070103

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 145
    const/16 v1, 0xa

    const v2, 0x1070104

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 146
    const/16 v1, 0xb

    const v2, 0x1070105

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 147
    const/16 v1, 0xc

    const v2, 0x1070106

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 148
    const/16 v1, 0xd

    const v2, 0x1070107

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 149
    const/16 v1, 0xe

    const v2, 0x1070108

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 150
    const/16 v1, 0xf

    const v2, 0x1070109

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 151
    const/16 v1, 0x10

    const v2, 0x107010a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 152
    const/16 v1, 0x11

    const v2, 0x107010b

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 153
    const/16 v1, 0x12

    const v2, 0x107010c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 154
    const/16 v1, 0x13

    const v2, 0x107010d

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 155
    const/16 v1, 0x14

    const v2, 0x107010e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 156
    const/16 v1, 0x15

    const v2, 0x107010f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 157
    const/16 v1, 0x16

    const v2, 0x1070110

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 158
    const/16 v1, 0x17

    const v2, 0x1070111

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 159
    const/16 v1, 0x18

    const v2, 0x1070112

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 160
    const/16 v1, 0x19

    const v2, 0x1070113

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 161
    const/16 v1, 0x1a

    const v2, 0x1070114

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 162
    const/16 v1, 0x1b

    const v2, 0x1070115

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 163
    const/16 v1, 0x1c

    const v2, 0x1070116

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 164
    const/16 v1, 0x1d

    const v2, 0x1070117

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 165
    const/16 v1, 0x1e

    const v2, 0x1070118

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 166
    const/16 v1, 0x1f

    const v2, 0x1070119

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 167
    const/16 v1, 0x20

    const v2, 0x107011a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 168
    const/16 v1, 0x21

    const v2, 0x107011b

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 169
    const/16 v1, 0x22

    const v2, 0x107011c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 170
    const/16 v1, 0x23

    const v2, 0x107011d

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 171
    const/16 v1, 0x24

    const v2, 0x107011e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 172
    const/16 v1, 0x25

    const v2, 0x107011f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 173
    const/16 v1, 0x26

    const v2, 0x1070120

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 174
    const/16 v1, 0x27

    const v2, 0x1070121

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 175
    const/16 v1, 0x28

    const v2, 0x1070122

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 176
    const/16 v1, 0x29

    const v2, 0x1070123

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 177
    const/16 v1, 0x2a

    const v2, 0x1070124

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 178
    const/16 v1, 0x2b

    const v2, 0x1070125

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 179
    const/16 v1, 0x2c

    const v2, 0x1070126

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 180
    const/16 v1, 0x2d

    const v2, 0x1070127

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 181
    const/16 v1, 0x2e

    const v2, 0x1070128

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 182
    const/16 v1, 0x2f

    const v2, 0x1070129

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 183
    const/16 v1, 0x30

    const v2, 0x107012a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 184
    const/16 v1, 0x31

    const v2, 0x107012b

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 185
    const/16 v1, 0x32

    const v2, 0x107012c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 186
    const/16 v1, 0x33

    const v2, 0x107012d

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 187
    const/16 v1, 0x34

    const v2, 0x107012e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 188
    const/16 v1, 0x38

    const v2, 0x107012f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 189
    const/16 v1, 0x39

    const v2, 0x1070130

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 190
    const/16 v1, 0x3a

    const v2, 0x1070131

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 191
    const/16 v1, 0x3b

    const v2, 0x1070132

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 192
    const/16 v1, 0x3c

    const v2, 0x1070133

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 193
    const/16 v1, 0x54

    const v2, 0x1070134

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 194
    const/16 v1, 0x55

    const v2, 0x1070135

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 195
    const/16 v1, 0x56

    const v2, 0x1070136

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 196
    const/16 v1, 0x57

    const v2, 0x1070137

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 197
    const/16 v1, 0x58

    const v2, 0x1070138

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 198
    const/16 v1, 0x59

    const v2, 0x1070139

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 199
    const/16 v1, 0x5a

    const v2, 0x107013a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 200
    const/16 v1, 0x5b

    const v2, 0x107013b

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 201
    const/16 v1, 0x5c

    const v2, 0x107013c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;II)V

    .line 202
    return-void
.end method
