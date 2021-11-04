.class public Lcom/samsung/android/server/audio/PhoneStateHelper;
.super Ljava/lang/Object;
.source "PhoneStateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.PhoneStateHelper"

.field private static sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;


# instance fields
.field private mIs2GTDMANetwork:Z

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRilState:I

.field private mSimCount:I

.field private mSpecifiedTm:[Landroid/telephony/TelephonyManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    .line 47
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/audio/PhoneStateHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 31
    iget v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/server/audio/PhoneStateHelper;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/PhoneStateHelper;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/server/audio/PhoneStateHelper;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/server/audio/PhoneStateHelper;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->is2GTDMANetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/audio/PhoneStateHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/server/audio/PhoneStateHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/PhoneStateHelper;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/PhoneStateHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/samsung/android/server/audio/PhoneStateHelper;->sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/PhoneStateHelper;->sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 54
    :cond_b
    sget-object v0, Lcom/samsung/android/server/audio/PhoneStateHelper;->sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;

    return-object v0
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .registers 2

    .line 93
    new-instance v0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/PhoneStateHelper$1;-><init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V

    return-object v0
.end method

.method private is2GTDMANetwork(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 131
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/16 v1, 0x10

    if-eq p1, v1, :cond_c

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method


# virtual methods
.method public registerPhoneStateListener()V
    .registers 8

    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 60
    const-string v1, "AS.PhoneStateHelper"

    if-nez v0, :cond_12

    .line 61
    const-string v0, "do not register PhoneStateListener on NO_SIM state"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 65
    :cond_12
    new-array v2, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 66
    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    if-ge v0, v2, :cond_6b

    .line 69
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 70
    .local v2, "subIds":[I
    if-eqz v2, :cond_68

    array-length v3, v2

    if-lez v3, :cond_68

    .line 71
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 72
    .local v3, "subId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener mSimCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v0

    .line 74
    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    aput-object v5, v4, v0

    .line 75
    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v0

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 68
    .end local v2    # "subIds":[I
    .end local v3    # "subId":I
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 78
    .end local v0    # "i":I
    :cond_6b
    return-void
.end method

.method public unregisterPhoneStateListener()V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_35

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    if-ge v0, v1, :cond_35

    .line 83
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v1, v0

    if-eqz v2, :cond_32

    .line 84
    iget-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    aget-object v2, v2, v0

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call unregisterPhoneStateListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.PhoneStateHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 90
    .end local v0    # "i":I
    :cond_35
    return-void
.end method
