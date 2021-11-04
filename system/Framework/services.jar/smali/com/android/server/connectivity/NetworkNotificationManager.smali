.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private mShowSignInNotification:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "t"    # Landroid/telephony/TelephonyManager;
    .param p3, "n"    # Landroid/app/NotificationManager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mShowSignInNotification:Z

    .line 106
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 109
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    .line 110
    return-void
.end method

.method protected static approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 2
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_c

    :cond_8
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    :goto_c
    return v0
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    .line 122
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    .line 121
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private static getIcon(I)I
    .registers 2
    .param p0, "transportType"    # I

    .line 138
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 139
    const v0, 0x1080a06

    goto :goto_a

    .line 140
    :cond_7
    const v0, 0x1080a01

    .line 138
    :goto_a
    return v0
.end method

.method private getPcoValueForDefaultData()I
    .registers 3

    .line 357
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 358
    .local v0, "slotIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 359
    return v1

    .line 362
    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getPersistentPcoValueForSlot(I)I

    move-result v1

    return v1
.end method

.method private getPersistentPcoValueForSlot(I)I
    .registers 10
    .param p1, "slotIndex"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 367
    .local v0, "totalSlots":I
    const/4 v1, -0x1

    if-ltz p1, :cond_45

    if-lt p1, v0, :cond_c

    goto :goto_45

    .line 371
    :cond_c
    const-string/jumbo v2, "persist.sys.pcovalue"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "pcoValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 373
    return v1

    .line 376
    :cond_1a
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "pcoValues":[Ljava/lang/String;
    array-length v4, v3

    if-eq v4, v0, :cond_24

    .line 378
    return v1

    .line 381
    :cond_24
    const/4 v1, -0x1

    .line 383
    .local v1, "pco":I
    :try_start_25
    aget-object v4, v3, p1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2b} :catch_2d

    move v1, v4

    .line 386
    goto :goto_44

    .line 384
    :catch_2d
    move-exception v4

    .line 385
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid pco: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :goto_44
    return v1

    .line 368
    .end local v1    # "pco":I
    .end local v2    # "pcoValue":Ljava/lang/String;
    .end local v3    # "pcoValues":[Ljava/lang/String;
    :cond_45
    :goto_45
    return v1
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .registers 5
    .param p0, "transportType"    # I

    .line 128
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1070158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "networkTypes":[Ljava/lang/String;
    :try_start_b
    aget-object v2, v1, p0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_d} :catch_e

    return-object v2

    .line 132
    :catch_e
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const v3, 0x1040730

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventId"    # I

    .line 457
    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    .line 458
    .local v0, "t":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_b
    const-string v1, "UNKNOWN"

    :goto_d
    return-object v1
.end method

.method private static priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I
    .registers 4
    .param p0, "t"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 466
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 467
    return v0

    .line 469
    :cond_4
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$1;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 483
    return v0

    .line 481
    :pswitch_10
    const/4 v0, 0x1

    return v0

    .line 479
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 477
    :pswitch_14
    const/4 v0, 0x3

    return v0

    .line 475
    :pswitch_16
    const/4 v0, 0x4

    return v0

    .line 473
    :pswitch_18
    const/4 v0, 0x5

    return v0

    .line 471
    :pswitch_1a
    const/4 v0, 0x6

    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method static tagFor(I)Ljava/lang/String;
    .registers 5
    .param p0, "id"    # I

    .line 452
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ConnectivityNotification:%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNotification(I)V
    .registers 10
    .param p1, "id"    # I

    .line 405
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 406
    return-void

    .line 408
    :cond_9
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 411
    .local v1, "eventId":I
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 412
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 411
    const-string v6, "clearing notification tag=%s event=%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_32} :catch_33

    .line 419
    goto :goto_49

    .line 416
    :catch_33
    move-exception v2

    .line 417
    .local v2, "npe":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 418
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 417
    const-string v5, "failed to clear notification tag=%s event=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_49
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 421
    return-void
.end method

.method public clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 396
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 397
    .local v0, "previousEventId":I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v1

    .line 398
    .local v1, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    if-eq p2, v1, :cond_d

    .line 399
    return-void

    .line 401
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 402
    return-void
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 15
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 427
    if-eqz p1, :cond_32

    .line 430
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "splitAction":[Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "intent":Landroid/content/Intent;
    :try_start_10
    const-string/jumbo v3, "provision.phone.id"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_1f

    .line 434
    :catch_1e
    move-exception v3

    :goto_1f
    nop

    .line 435
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 436
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v6, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v5, p2

    move-object v9, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 437
    .end local v0    # "splitAction":[Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_35

    .line 438
    :cond_32
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 440
    :goto_35
    return-void
.end method

.method public setShowSignInNotification(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mShowSignInNotification:Z

    .line 146
    return-void
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 28
    .param p1, "id"    # I
    .param p2, "notifyType"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "switchToNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .param p6, "highPriority"    # Z

    .line 173
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "tag":Ljava/lang/String;
    iget v6, v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 179
    .local v6, "eventId":I
    const/4 v7, 0x1

    .line 185
    .local v7, "isWcmEnabled":Z
    if-eqz v4, :cond_36

    .line 186
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 187
    .local v0, "transportType":I
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "extraInfo":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v9

    goto :goto_29

    :cond_28
    move-object v9, v8

    .line 190
    .local v9, "name":Ljava/lang/String;
    :goto_29
    iget-object v10, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-nez v10, :cond_34

    return-void

    .line 191
    .end local v8    # "extraInfo":Ljava/lang/String;
    :cond_34
    move v8, v0

    goto :goto_39

    .line 193
    .end local v0    # "transportType":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_36
    const/4 v0, 0x0

    .line 194
    .restart local v0    # "transportType":I
    const/4 v9, 0x0

    move v8, v0

    .line 199
    .end local v0    # "transportType":I
    .local v8, "transportType":I
    .restart local v9    # "name":Ljava/lang/String;
    :goto_39
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 200
    .local v10, "previousEventId":I
    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v11

    .line 201
    .local v11, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    invoke-static {v11}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->priority(Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)I

    move-result v12

    const/4 v13, 0x3

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-le v0, v12, :cond_6a

    .line 202
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v3, v12, v15

    .line 204
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x2

    aput-object v11, v12, v13

    .line 202
    const-string/jumbo v13, "ignoring notification %s for network %s with existing notification %s"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_6a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 210
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const/4 v12, 0x5

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v5, v13, v15

    .line 212
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v14

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x2

    aput-object v18, v13, v16

    const/16 v17, 0x3

    aput-object v9, v13, v17

    const/16 v18, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v13, v18

    .line 210
    const-string/jumbo v12, "showNotification tag=%s event=%s transport=%s name=%s highPriority=%s"

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 218
    .local v12, "r":Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(I)I

    move-result v13

    .line 219
    .local v13, "icon":I
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const v15, 0x1040d71

    if-ne v3, v0, :cond_cd

    if-ne v8, v14, :cond_cd

    .line 220
    new-array v0, v14, [Ljava/lang/Object;

    iget-object v14, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 221
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v0, v17

    .line 220
    invoke-virtual {v12, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "title":Ljava/lang/CharSequence;
    const v14, 0x1040d72

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object v9, v0

    .local v14, "details":Ljava/lang/CharSequence;
    goto/16 :goto_248

    .line 223
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v14    # "details":Ljava/lang/CharSequence;
    :cond_cd
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_108

    .line 224
    if-nez v8, :cond_db

    .line 225
    const v0, 0x10406db

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_fa

    .line 226
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_db
    const/4 v0, 0x1

    if-ne v8, v0, :cond_f3

    .line 227
    new-array v14, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 228
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v17, 0x0

    aput-object v0, v14, v17

    .line 227
    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_fa

    .line 230
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_f3
    const v0, 0x104077d

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "title":Ljava/lang/CharSequence;
    :goto_fa
    const v14, 0x10409fd

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object v9, v0

    .restart local v14    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_248

    .line 233
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v14    # "details":Ljava/lang/CharSequence;
    :cond_108
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_134

    const/4 v0, 0x1

    if-ne v8, v0, :cond_134

    .line 235
    const v14, 0x104072b

    new-array v15, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 236
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v17, 0x0

    aput-object v0, v15, v17

    .line 235
    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v14, 0x104072c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object v9, v0

    .restart local v14    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_248

    .line 238
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v14    # "details":Ljava/lang/CharSequence;
    :cond_134
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_15d

    const/4 v0, 0x1

    if-ne v8, v0, :cond_15d

    .line 240
    new-array v14, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 241
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v17, 0x0

    aput-object v0, v14, v17

    .line 240
    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "title":Ljava/lang/CharSequence;
    const v14, 0x1040d72

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object v9, v0

    .restart local v14    # "details":Ljava/lang/CharSequence;
    goto/16 :goto_248

    .line 243
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v14    # "details":Ljava/lang/CharSequence;
    :cond_15d
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_215

    .line 244
    const v0, 0x1040724

    if-eqz v8, :cond_1b7

    const/4 v15, 0x1

    if-eq v8, v15, :cond_189

    .line 272
    new-array v14, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v14, v18

    invoke-virtual {v12, v0, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "title":Ljava/lang/CharSequence;
    new-array v14, v15, [Ljava/lang/Object;

    aput-object v9, v14, v18

    const v15, 0x1040725

    invoke-virtual {v12, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 274
    .restart local v14    # "details":Ljava/lang/CharSequence;
    move/from16 v19, v18

    move-object/from16 v18, v9

    move-object v9, v0

    goto/16 :goto_248

    .line 246
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v14    # "details":Ljava/lang/CharSequence;
    :cond_189
    const/16 v18, 0x0

    const v0, 0x1040d6b

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v15, v18

    invoke-virtual {v12, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0    # "title":Ljava/lang/CharSequence;
    new-array v15, v14, [Ljava/lang/Object;

    iget-object v14, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 248
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v18

    .line 247
    const v14, 0x1040725

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 249
    .restart local v14    # "details":Ljava/lang/CharSequence;
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object v9, v0

    goto/16 :goto_248

    .line 252
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v14    # "details":Ljava/lang/CharSequence;
    :cond_1b7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_ConfigPco"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "VZW"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1df

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getPcoValueForDefaultData()I

    move-result v14

    .line 254
    .local v14, "value":I
    iget-boolean v15, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mShowSignInNotification:Z

    if-eqz v15, :cond_1d7

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1d7

    const/4 v15, 0x5

    if-ne v14, v15, :cond_1df

    .line 255
    :cond_1d7
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string v15, "Don\'t show Sign in notification when inserted PCO 3/5 SIM card."

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 259
    .end local v14    # "value":I
    :cond_1df
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v14

    invoke-virtual {v12, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .restart local v0    # "title":Ljava/lang/CharSequence;
    iget-object v14, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v14

    .line 263
    .local v14, "specifier":Landroid/net/NetworkSpecifier;
    const v15, 0x7fffffff

    .line 264
    .local v15, "subId":I
    move-object/from16 v17, v0

    .end local v0    # "title":Ljava/lang/CharSequence;
    .local v17, "title":Ljava/lang/CharSequence;
    instance-of v0, v14, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v0, :cond_203

    .line 265
    move-object v0, v14

    check-cast v0, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v15

    .line 268
    :cond_203
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v15}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "details":Ljava/lang/CharSequence;
    move-object v14, v0

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    const/16 v19, 0x0

    goto :goto_248

    .line 276
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v14    # "specifier":Landroid/net/NetworkSpecifier;
    .end local v15    # "subId":I
    .end local v17    # "title":Ljava/lang/CharSequence;
    :cond_215
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_332

    .line 277
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v14

    invoke-static {v14}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v14

    .line 279
    .local v14, "toTransport":Ljava/lang/String;
    move-object/from16 v18, v9

    const/4 v15, 0x1

    .end local v9    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    new-array v9, v15, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v14, v9, v19

    const v15, 0x104072d

    invoke-virtual {v12, v15, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "title":Ljava/lang/CharSequence;
    move-object/from16 v20, v9

    const/4 v15, 0x2

    .end local v9    # "title":Ljava/lang/CharSequence;
    .local v20, "title":Ljava/lang/CharSequence;
    new-array v9, v15, [Ljava/lang/Object;

    aput-object v14, v9, v19

    const/4 v15, 0x1

    aput-object v0, v9, v15

    const v15, 0x104072e

    invoke-virtual {v12, v15, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 282
    .end local v0    # "fromTransport":Ljava/lang/String;
    .local v14, "details":Ljava/lang/CharSequence;
    move-object/from16 v9, v20

    .line 293
    .end local v20    # "title":Ljava/lang/CharSequence;
    .restart local v9    # "title":Ljava/lang/CharSequence;
    :goto_248
    if-eqz v7, :cond_28c

    .line 294
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_289

    const/4 v0, 0x1

    if-ne v8, v0, :cond_289

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v15, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 296
    .local v15, "wcmIntent":Landroid/content/Intent;
    iget-object v0, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move/from16 v17, v7

    .end local v7    # "isWcmEnabled":Z
    .local v17, "isWcmEnabled":Z
    const-string/jumbo v7, "netId"

    invoke-static {v7, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 297
    const/high16 v0, 0x10000000

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    const-string v0, "com.android.settings"

    const-string v4, "com.samsung.android.settings.wifi.WifiWcmNoInternetDialog"

    invoke-virtual {v15, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :try_start_27a
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27a .. :try_end_27f} :catch_280

    .line 305
    goto :goto_288

    .line 302
    :catch_280
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string v7, "ActivityNotFoundException occured."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_288
    return-void

    .line 294
    .end local v15    # "wcmIntent":Landroid/content/Intent;
    .end local v17    # "isWcmEnabled":Z
    .restart local v7    # "isWcmEnabled":Z
    :cond_289
    move/from16 v17, v7

    .end local v7    # "isWcmEnabled":Z
    .restart local v17    # "isWcmEnabled":Z
    goto :goto_28e

    .line 293
    .end local v17    # "isWcmEnabled":Z
    .restart local v7    # "isWcmEnabled":Z
    :cond_28c
    move/from16 v17, v7

    .line 314
    .end local v7    # "isWcmEnabled":Z
    .restart local v17    # "isWcmEnabled":Z
    :goto_28e
    if-eqz v11, :cond_292

    const/4 v0, 0x1

    goto :goto_294

    :cond_292
    move/from16 v0, v19

    :goto_294
    move v4, v0

    .line 315
    .local v4, "hasPreviousNotification":Z
    if-eqz p6, :cond_29c

    if-nez v4, :cond_29c

    .line 316
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    goto :goto_29e

    .line 317
    :cond_29c
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    :goto_29e
    move-object v7, v0

    .line 318
    .local v7, "channelId":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v15, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v15, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 319
    move v15, v10

    move-object/from16 v20, v11

    .end local v10    # "previousEventId":I
    .end local v11    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .local v15, "previousEventId":I
    .local v20, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v10, :cond_2b7

    const/4 v10, 0x1

    goto :goto_2b9

    :cond_2b7
    move/from16 v10, v19

    .line 320
    :goto_2b9
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 322
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    const v11, 0x106001c

    .line 324
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 327
    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 328
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 331
    .local v11, "builder":Landroid/app/Notification$Builder;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_2fb

    .line 332
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_2fe

    .line 334
    :cond_2fb
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 337
    :goto_2fe
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_30e

    .line 338
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0}, Landroid/app/Notification$TvExtender;-><init>()V

    invoke-virtual {v0, v7}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 341
    :cond_30e
    move/from16 v19, v4

    .end local v4    # "hasPreviousNotification":Z
    .local v19, "hasPreviousNotification":Z
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 343
    .local v4, "notification":Landroid/app/Notification;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_31b

    .line 344
    const/4 v0, 0x2

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 347
    :cond_31b
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    :try_start_320
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v6, v4, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_327
    .catch Ljava/lang/NullPointerException; {:try_start_320 .. :try_end_327} :catch_328

    .line 352
    goto :goto_331

    .line 350
    :catch_328
    move-exception v0

    .line 351
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setNotificationVisible: visible notificationManager error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_331
    return-void

    .line 282
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v14    # "details":Ljava/lang/CharSequence;
    .end local v15    # "previousEventId":I
    .end local v17    # "isWcmEnabled":Z
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "hasPreviousNotification":Z
    .end local v20    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .local v7, "isWcmEnabled":Z
    .local v9, "name":Ljava/lang/String;
    .restart local v10    # "previousEventId":I
    .local v11, "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    :cond_332
    move/from16 v17, v7

    move-object/from16 v18, v9

    move v15, v10

    move-object/from16 v20, v11

    move-object/from16 v10, p5

    .end local v7    # "isWcmEnabled":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "previousEventId":I
    .end local v11    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .restart local v15    # "previousEventId":I
    .restart local v17    # "isWcmEnabled":Z
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v20    # "previousNotifyType":Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq v3, v0, :cond_367

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-ne v3, v0, :cond_344

    goto :goto_367

    .line 288
    :cond_344
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on network transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 286
    :cond_367
    :goto_367
    return-void
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 443
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "fromTransport":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->approximateTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "toTransport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v5, 0x104072f

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 448
    return-void
.end method
