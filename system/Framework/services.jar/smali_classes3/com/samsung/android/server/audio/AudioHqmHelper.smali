.class public Lcom/samsung/android/server/audio/AudioHqmHelper;
.super Ljava/lang/Object;
.source "AudioHqmHelper.java"


# static fields
.field private static final AUDIO_FEATURE:Ljava/lang/String; = "FWAC"

.field private static final BIG_DATA:[[Ljava/lang/String;

.field private static final COMONENT_VER:Ljava/lang/String; = "0.0"

.field private static final COMPONENT_ID:Ljava/lang/String; = "Audio"

.field private static final COM_MANUFACTURE:Ljava/lang/String; = "sec"

.field private static final DEV_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field private static final HIT_TYPE:Ljava/lang/String; = "sm"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final PERIOD_LOGGING:I = 0x5265c00

.field private static final PRI_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "AS.AudioHqmHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "HW_CSPT"

    const-string v2, "HW_CSPV"

    const-string v3, "HW_CSPC"

    const-string v4, "HW_CRET"

    const-string v5, "HW_CREV"

    const-string v6, "HW_CREC"

    const-string v7, "HW_CEAT"

    const-string v8, "HW_CEAV"

    const-string v9, "HW_CEAC"

    const-string v10, "HW_REVC"

    const-string v11, "HW_EVSC"

    const-string v12, "HW_CBTT"

    const-string v13, "HW_CBTC"

    const-string v14, "HW_CUST"

    const-string v15, "HW_CUSV"

    const-string v16, "HW_CUSC"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "HW_MSPT"

    const-string v4, "HW_MSPV"

    const-string v5, "HW_MSPC"

    const-string v6, "HW_MEAT"

    const-string v7, "HW_MEAV"

    const-string v8, "HW_MEAC"

    const-string v9, "HW_MBTT"

    const-string v10, "HW_MBTV"

    const-string v11, "HW_MBTC"

    const-string v12, "HW_MUST"

    const-string v13, "HW_MUSV"

    const-string v14, "HW_MUSC"

    const-string v15, "HW_3EJC"

    const-string v16, "HW_4EJC"

    const-string v17, "HW_MEDT"

    const-string v18, "HW_MEDV"

    const-string v19, "HW_MEDC"

    const-string v20, "HW_DLBY"

    const-string v21, "MU_MSVL"

    const-string v22, "MU_MEVL"

    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "FM_FWBT"

    const-string v2, "FM_FVBT"

    const-string v3, "FW_DSDC"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "HqmManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 72
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 73
    return-void
.end method

.method private convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 109
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 111
    .local v0, "size":I
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v1, "obj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1c

    .line 113
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_19} :catch_22

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 118
    .end local v2    # "i":I
    :cond_1c
    nop

    .line 119
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 115
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_22
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioHqmHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/samsung/android/server/audio/AudioHqmHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/AudioHqmHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;

    .line 79
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->sInstance:Lcom/samsung/android/server/audio/AudioHqmHelper;

    return-object v0
.end method

.method private sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "basic_customDataSet":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 125
    return-void

    .line 128
    :cond_8
    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v2, v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v2, :cond_36

    .line 131
    const-string v2, "AS.AudioHqmHelper"

    const-string v3, "sendLoggingDataToHQM() Server update !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v5, v0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v6, 0x0

    const-string v7, "Audio"

    const-string v8, "FWAC"

    const-string v9, "sm"

    const-string v10, "0.0"

    const-string v11, "sec"

    const-string v12, ""

    const-string v14, ""

    move-object v13, v1

    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    :cond_36
    return-void
.end method


# virtual methods
.method public sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V
    .registers 9
    .param p1, "audioParam"    # Lcom/samsung/android/media/AudioParameter;
    .param p2, "isBigDataApp"    # Z

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    sget-object v4, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_32

    .line 98
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "strVal":Ljava/lang/String;
    if-eqz v4, :cond_2f

    .line 99
    sget-object v4, Lcom/samsung/android/server/audio/AudioHqmHelper;->BIG_DATA:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 103
    .end local v3    # "j":I
    .end local v5    # "strVal":Ljava/lang/String;
    :cond_32
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 93
    .end local v1    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method public startLogging(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 86
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long v4, v3, v5

    .line 86
    const/4 v3, 0x3

    const-wide/32 v6, 0x5265c00

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 89
    return-void
.end method
