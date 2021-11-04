.class Lcom/android/server/input/InputKeyCounter;
.super Ljava/lang/Object;
.source "InputKeyCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputKeyCounter$HwKeyCount;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SHIP_BUILD:Z

.field private static final SURVEY_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "InputKeyCounter"


# instance fields
.field private final mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->SHIP_BUILD:Z

    .line 40
    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 44
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 45
    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->SURVEY_ENABLED:Z

    .line 44
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$1;)V

    iput-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 48
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    return v0
.end method

.method private sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v0, "InputKeyCounter"

    if-eqz p2, :cond_a1

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_a1

    .line 89
    :cond_c
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 90
    .local v1, "length":I
    new-array v2, v1, [Landroid/content/ContentValues;

    .line 91
    .local v2, "cvs":[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_4c

    .line 92
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v2, v3

    .line 93
    aget-object v4, v2, v3

    const-string v5, "app_id"

    const-string v6, "com.android.server.input"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    aget-object v4, v2, v3

    const-string v5, "feature"

    const-string v6, "BKCS"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    aget-object v4, v2, v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "extra"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    aget-object v4, v2, v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 99
    .end local v3    # "i":I
    :cond_4c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v4, "data"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    sget-boolean v4, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v4, :cond_a0

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sendbroadcast keycount - lenght: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    array-length v4, v2

    const/4 v5, 0x0

    :goto_81
    if-ge v5, v4, :cond_a0

    aget-object v6, v2, v5

    .line 108
    .local v6, "cv":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sendbroadcast keycount - cvs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v6    # "cv":Landroid/content/ContentValues;
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 111
    :cond_a0
    return-void

    .line 85
    .end local v1    # "length":I
    .end local v2    # "cvs":[Landroid/content/ContentValues;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a1
    :goto_a1
    const-string v1, "No map object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method


# virtual methods
.method getAllKeyCount()J
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getAllKeyCount()J

    move-result-wide v0

    return-wide v0
.end method

.method increaseCount(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 55
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(I)V

    .line 56
    return-void
.end method

.method kickOldies(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const-string v0, ""

    sget-boolean v1, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    const-string v2, "InputKeyCounter"

    if-eqz v1, :cond_e

    .line 115
    const-string/jumbo v1, "read old data!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_e
    const-string/jumbo v1, "persist.service.bgkeycount"

    const-string/jumbo v3, "null"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "oldKeyCountStrings":[Ljava/lang/String;
    new-instance v4, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$1;)V

    .line 122
    .local v4, "oldKeyCount":Lcom/android/server/input/InputKeyCounter$HwKeyCount;
    :try_start_24
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_27
    if-ge v7, v5, :cond_68

    aget-object v8, v3, v7

    .line 123
    .local v8, "s":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v9, :cond_44

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read old saved keycount strings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_44
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "oldKeyCountString":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_55

    .line 129
    const-string/jumbo v5, "throw up the data!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 133
    :cond_55
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 134
    .local v10, "key":I
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 135
    .local v11, "count":I
    invoke-virtual {v4, v10, v11}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(II)V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_65} :catch_69

    .line 122
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "oldKeyCountString":[Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "count":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 141
    :cond_68
    goto :goto_72

    .line 138
    :catch_69
    move-exception v5

    .line 139
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "NumberFormatException, throw up the data!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_72
    invoke-virtual {v4}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 146
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 149
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method saveCount()V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 64
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 65
    .local v1, "keyCountString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_13

    .line 71
    :cond_50
    sget-boolean v2, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCount - concat data :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputKeyCounter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_6b
    const-string/jumbo v2, "persist.service.bgkeycount"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method sendBroadcastKeyCount(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 79
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->clearKeyCount()V

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 81
    return-void
.end method

.method surveyEnabled()Z
    .registers 2

    .line 51
    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->SURVEY_ENABLED:Z

    return v0
.end method
