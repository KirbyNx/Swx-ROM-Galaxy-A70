.class public Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
.super Ljava/lang/Object;
.source "VibratorHqmHelper.java"


# static fields
.field private static final BIG_DATA:[Ljava/lang/String;

.field private static final COMONENT_VER:Ljava/lang/String; = "0.0"

.field private static final COMPONENT_ID:Ljava/lang/String; = "Audio"

.field private static final COM_MANUFACTURE:Ljava/lang/String; = "sec"

.field private static final DEV_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field private static final HIT_TYPE:Ljava/lang/String; = "sm"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final PERIOD_LOGGING:I = 0x5265c00

.field private static final PRI_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "VibratorHqmHelper"

.field private static final VIBRATOR_FEATURE:Ljava/lang/String; = "VIBE"

.field private static sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 56
    const-string v0, "FW_RVPC"

    const-string v1, "FW_AVPC"

    const-string v2, "FW_NVPC"

    const-string v3, "FW_TVPC"

    const-string v4, "FW_EVPC"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "HqmManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 66
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 67
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

    .line 102
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    .local v0, "size":I
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v1, "obj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1c

    .line 106
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_19} :catch_22

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 111
    .end local v2    # "i":I
    :cond_1c
    nop

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 108
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_22
    move-exception v1

    .line 109
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 73
    :cond_b
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

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

    .line 116
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "basic_customDataSet":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 118
    return-void

    .line 121
    :cond_8
    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v2, v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v2, :cond_36

    .line 124
    const-string v2, "VibratorHqmHelper"

    const-string v3, "sendLoggingDataToHQM() Server update !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v6, 0x0

    const-string v7, "Audio"

    const-string v8, "VIBE"

    const-string v9, "sm"

    const-string v10, "0.0"

    const-string v11, "sec"

    const-string v12, ""

    const-string v14, ""

    move-object v13, v1

    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    :cond_36
    return-void
.end method


# virtual methods
.method public sendHqmVibratorData(Lcom/samsung/android/server/vibrator/VibratorHqmData;)V
    .registers 7
    .param p1, "data"    # Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    sget-object v3, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 91
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->get(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "strVal":Ljava/lang/String;
    if-eqz v3, :cond_26

    .line 93
    sget-object v4, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 97
    .end local v2    # "i":I
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_29
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 98
    return-void
.end method

.method public startLogging(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.media.action.VIBRTOR_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long v4, v3, v5

    .line 80
    const/4 v3, 0x3

    const-wide/32 v6, 0x5265c00

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 83
    return-void
.end method
