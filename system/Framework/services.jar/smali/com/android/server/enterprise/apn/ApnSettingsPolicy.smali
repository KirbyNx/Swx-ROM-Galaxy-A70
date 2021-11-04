.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final SIM_INVALID:I = -0x1

.field private static final SIM_SLOT1:I = 0x0

.field private static final SIM_SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mMDMConfigVersion:I

.field private mPendingGetApnList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    .line 97
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    .line 99
    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 105
    const-string v0, "30"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 138
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method private enforceApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 127
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 133
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListUri(I)Landroid/net/Uri;
    .registers 9
    .param p1, "simSlot"    # I

    .line 589
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v1, "getApnListUri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "telUri":Landroid/net/Uri;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 593
    .local v2, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_46

    .line 594
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    goto :goto_46

    .line 599
    :cond_1b
    const/4 v0, -0x1

    .line 600
    .local v0, "subId":I
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2d

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 601
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v0, v4, v5

    goto :goto_2e

    .line 603
    :cond_2d
    const/4 v0, -0x1

    .line 607
    :goto_2e
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 610
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_39

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    goto :goto_3a

    .line 611
    :cond_39
    nop

    :goto_3a
    nop

    .line 612
    .local v3, "subIdFromSubInfo":I
    sget-object v5, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 613
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 612
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4d

    .line 595
    .end local v0    # "subId":I
    .end local v3    # "subIdFromSubInfo":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_46
    :goto_46
    const-string v3, "No SIM "

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 616
    :goto_4d
    return-object v1
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .param p1, "ColumnName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 789
    const-string v0, ""

    .line 791
    .local v0, "value":Ljava/lang/String;
    :try_start_2
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 792
    if-nez v0, :cond_10

    .line 793
    const-string v1, ""
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 797
    :cond_10
    goto :goto_15

    .line 795
    :catch_11
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return-object v0
.end method

.method private getDeviceSimSlotCnt()I
    .registers 4

    .line 642
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 643
    .local v0, "simSlotCnt":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlotCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApnSettingsPolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFirstSlotIndex()I
    .registers 9

    .line 649
    const-string/jumbo v0, "ril.ICC_TYPE0"

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "simType1":Ljava/lang/String;
    const-string/jumbo v3, "ril.ICC_TYPE1"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "simType2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone1_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_23

    move v5, v4

    goto :goto_24

    :cond_23
    move v5, v1

    .line 654
    .local v5, "simSlot1On":Z
    :goto_24
    iget-object v6, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "phone2_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_34

    move v1, v4

    .line 657
    .local v1, "simSlot2On":Z
    :cond_34
    const/4 v4, -0x1

    .line 658
    .local v4, "slotId":I
    if-eqz v5, :cond_3f

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 659
    const/4 v4, 0x0

    goto :goto_48

    .line 660
    :cond_3f
    if-eqz v1, :cond_48

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 661
    const/4 v4, 0x1

    .line 664
    :cond_48
    :goto_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFirstSlotIndex : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ApnSettingsPolicyService"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v4
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 3
    .param p1, "subId"    # I

    .line 638
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "def"    # Ljava/lang/String;

    .line 669
    const-string/jumbo v0, "ril.ICC_TYPE0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "iccType0":Ljava/lang/String;
    const-string/jumbo v2, "ril.ICC_TYPE1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "iccType1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 672
    .local v4, "resultProperty":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 673
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    move-object v0, v1

    goto :goto_20

    :cond_1f
    move-object v0, p3

    :goto_20
    move-object v4, v0

    goto :goto_34

    .line 674
    :cond_22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 675
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    move-object v0, v3

    goto :goto_33

    :cond_32
    move-object v0, p3

    :goto_33
    move-object v4, v0

    .line 678
    :cond_34
    :goto_34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 679
    invoke-static {p2, p1, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTelephonyProperty : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApnSettingsPolicyService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-object v4
.end method

.method private getWhereClause(I)Ljava/lang/String;
    .registers 5
    .param p1, "simSlot"    # I

    .line 620
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v1, "getWhereClause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, "where":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getDeviceSimSlotCnt()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    .line 627
    if-ne p1, v2, :cond_1e

    .line 628
    const-string v1, " AND current1 = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 629
    :cond_1e
    if-nez p1, :cond_25

    .line 630
    const-string v1, " AND current = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_25
    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isValidApnId(J)Z
    .registers 21
    .param p1, "apId"    # J

    .line 426
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    .line 427
    .local v4, "isValid":Z
    const/4 v5, 0x0

    .line 429
    .local v5, "c":Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    cmp-long v0, v6, v2

    const-string v6, "ApnSettingsPolicyService"

    if-gez v0, :cond_115

    .line 430
    const-string v0, "_id"

    const-string/jumbo v7, "numeric"

    const-string/jumbo v8, "type"

    filled-new-array {v0, v7, v8}, [Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_1a
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 436
    .local v0, "subId":I
    iget-object v7, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    .line 437
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 438
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, "numeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    move v15, v9

    .line 442
    .local v15, "phoneId":I
    const-string/jumbo v9, "ril.simoperator"

    const-string v10, "ETC"

    invoke-static {v15, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    .line 444
    .local v14, "simOp":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isValidApnId: simOp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", numeric = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v9, "CTC"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 446
    const-string/jumbo v9, "gsm.sim.cdmaoperator.numeric"

    const-string v10, ""

    invoke-static {v15, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "cdmaOperator":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_73

    const-string v10, "46003"

    goto :goto_74

    :cond_73
    move-object v10, v9

    :goto_74
    move-object v8, v10

    .line 449
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isValidApnId: CTC card! numeric = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", cdmaOperator = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v9    # "cdmaOperator":Ljava/lang/String;
    :cond_92
    sget-object v9, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 453
    .local v10, "url":Landroid/net/Uri;
    iget-object v9, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v14

    .end local v14    # "simOp":Ljava/lang/String;
    .local v17, "simOp":Ljava/lang/String;
    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v5, v9

    .line 454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isValidApnId() row count : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " for apId : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    move v4, v6

    .line 456
    if-eqz v4, :cond_ff

    .line 457
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fe

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_fe

    .line 458
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v12, "dun"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fe

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "mms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_fc} :catch_107
    .catchall {:try_start_1a .. :try_end_fc} :catchall_105

    if-eqz v6, :cond_ff

    .line 463
    :cond_fe
    const/4 v4, 0x0

    .line 469
    .end local v0    # "subId":I
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    .end local v8    # "numeric":Ljava/lang/String;
    .end local v10    # "url":Landroid/net/Uri;
    .end local v15    # "phoneId":I
    .end local v17    # "simOp":Ljava/lang/String;
    :cond_ff
    if-eqz v5, :cond_10e

    .line 470
    :goto_101
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_10e

    .line 469
    :catchall_105
    move-exception v0

    goto :goto_10f

    .line 466
    :catch_107
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    :try_start_108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_105

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_10e

    .line 470
    goto :goto_101

    .line 473
    .end local v11    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_10e
    :goto_10e
    goto :goto_12a

    .line 469
    .restart local v11    # "ID_PROJECTION":[Ljava/lang/String;
    :goto_10f
    if-eqz v5, :cond_114

    .line 470
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_114
    throw v0

    .line 474
    .end local v11    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isValidApnId() : invalid apId : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_12a
    return v4
.end method

.method private retrieveApnListFromDatabase()Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    .line 508
    move-object/from16 v1, p0

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "retrieveApnListFromDatabase"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v2, 0x0

    .line 510
    .local v2, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 512
    .local v3, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 514
    .local v4, "token":J
    :try_start_15
    const-string v6, "_id"

    const-string/jumbo v7, "name"

    const-string/jumbo v8, "mcc"

    const-string/jumbo v9, "mnc"

    const-string v10, "apn"

    const-string/jumbo v11, "user"

    const-string/jumbo v12, "server"

    const-string/jumbo v13, "password"

    const-string/jumbo v14, "proxy"

    const-string/jumbo v15, "port"

    const-string/jumbo v16, "mmsproxy"

    const-string/jumbo v17, "mmsport"

    const-string/jumbo v18, "mmsc"

    const-string v19, "authtype"

    const-string/jumbo v20, "type"

    const-string/jumbo v21, "protocol"

    const-string/jumbo v22, "roaming_protocol"

    const-string/jumbo v23, "mvno_type"

    const-string/jumbo v24, "mvno_match_data"

    filled-new-array/range {v6 .. v24}, [Ljava/lang/String;

    move-result-object v27

    .line 524
    .local v27, "columns":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getFirstSlotIndex()I

    move-result v0

    .line 525
    .local v0, "simSlot":I
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListUri(I)Landroid/net/Uri;

    move-result-object v26

    .line 527
    .local v26, "telUri":Landroid/net/Uri;
    iget-object v6, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 528
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getWhereClause(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 527
    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v2, v6

    .line 530
    if-eqz v2, :cond_162

    .line 531
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_162

    .line 533
    :cond_72
    new-instance v6, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 534
    .local v6, "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    const-string v7, "_id"

    invoke-direct {v1, v7, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 535
    .local v7, "id":J
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 536
    const-string/jumbo v9, "name"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 537
    const-string/jumbo v9, "mcc"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v9, "mnc"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 539
    const-string v9, "apn"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 540
    const-string/jumbo v9, "user"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 541
    const-string/jumbo v9, "server"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 542
    const-string/jumbo v9, "password"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 543
    const-string/jumbo v9, "proxy"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v9, "port"

    invoke-direct {v1, v9, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, "strPort":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e7

    .line 546
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 547
    .local v10, "port":I
    invoke-virtual {v6, v10}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 549
    .end local v10    # "port":I
    :cond_e7
    const-string/jumbo v10, "mmsproxy"

    invoke-direct {v1, v10, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v10, "mmsport"

    invoke-direct {v1, v10, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 551
    const-string/jumbo v10, "mmsc"

    invoke-direct {v1, v10, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 552
    const-string v10, "authtype"

    invoke-direct {v1, v10, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 553
    .local v10, "strAuthType":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_118

    .line 554
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 555
    .local v11, "authType":I
    invoke-virtual {v6, v11}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 557
    .end local v11    # "authType":I
    :cond_118
    const-string/jumbo v11, "type"

    invoke-direct {v1, v11, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 558
    iget v11, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_13a

    .line 561
    const-string/jumbo v11, "protocol"

    invoke-direct {v1, v11, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 562
    const-string/jumbo v11, "roaming_protocol"

    invoke-direct {v1, v11, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 565
    :cond_13a
    const-string/jumbo v11, "mvno_type"

    invoke-direct {v1, v11, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 566
    .local v11, "strMvnoType":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_149

    .line 567
    iput-object v11, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 569
    :cond_149
    const-string/jumbo v12, "mvno_match_data"

    invoke-direct {v1, v12, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 570
    .local v12, "strMvnoValue":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_158

    .line 571
    iput-object v12, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 573
    :cond_158
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    nop

    .end local v6    # "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    .end local v7    # "id":J
    .end local v9    # "strPort":Ljava/lang/String;
    .end local v10    # "strAuthType":Ljava/lang/String;
    .end local v11    # "strMvnoType":Ljava/lang/String;
    .end local v12    # "strMvnoValue":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_160
    .catchall {:try_start_15 .. :try_end_160} :catchall_16c

    if-nez v6, :cond_72

    .line 579
    .end local v0    # "simSlot":I
    .end local v26    # "telUri":Landroid/net/Uri;
    .end local v27    # "columns":[Ljava/lang/String;
    :cond_162
    if-eqz v2, :cond_167

    .line 580
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_167
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    nop

    .line 585
    return-object v3

    .line 579
    :catchall_16c
    move-exception v0

    if-eqz v2, :cond_172

    .line 580
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_172
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    throw v0
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "isNewAp"    # Z
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 810
    if-eqz p1, :cond_f

    .line 811
    if-nez p4, :cond_7

    const-string v0, ""

    goto :goto_b

    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 814
    :cond_f
    if-eqz p4, :cond_18

    .line 815
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_18
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColumnValue: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettingsPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method private validateMVNOType(Ljava/lang/String;)Z
    .registers 9
    .param p1, "mvno_type"    # Ljava/lang/String;

    .line 898
    const/4 v0, 0x0

    if-eqz p1, :cond_51

    .line 899
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3e

    const v6, 0x18fc2

    if-eq v2, v6, :cond_33

    const v6, 0x1bdb1

    if-eq v2, v6, :cond_28

    const v6, 0x31627a

    if-eq v2, v6, :cond_1d

    :cond_1c
    goto :goto_47

    :cond_1d
    const-string/jumbo v2, "imsi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v4

    goto :goto_47

    :cond_28
    const-string/jumbo v2, "spn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v5

    goto :goto_47

    :cond_33
    const-string/jumbo v2, "gid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v3

    goto :goto_47

    :cond_3e
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v0

    :goto_47
    if-eqz v1, :cond_50

    if-eq v1, v5, :cond_50

    if-eq v1, v4, :cond_50

    if-eq v1, v3, :cond_50

    goto :goto_51

    .line 905
    :cond_50
    return v5

    .line 908
    :cond_51
    :goto_51
    return v0
.end method

.method private validateProtocol(Ljava/lang/String;)Z
    .registers 8
    .param p1, "protocol"    # Ljava/lang/String;

    .line 885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 886
    return v1

    .line 888
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7edefc9b

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_32

    const/16 v3, 0x927

    if-eq v2, v3, :cond_28

    const v3, 0x226607

    if-eq v2, v3, :cond_1e

    :cond_1d
    goto :goto_3b

    :cond_1e
    const-string v2, "IPV6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v5

    goto :goto_3b

    :cond_28
    const-string v2, "IP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    goto :goto_3b

    :cond_32
    const-string v2, "IPV4V6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v4

    :goto_3b
    if-eqz v0, :cond_42

    if-eq v0, v5, :cond_42

    if-eq v0, v4, :cond_42

    .line 894
    return v1

    .line 892
    :cond_42
    return v5
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 822
    if-nez p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .registers 43
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isNewAp"    # Z
    .param p3, "apnSettings"    # Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 213
    :try_start_7
    const-string v0, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNewAp - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_8d6

    .line 215
    const/4 v4, 0x1

    .line 216
    .local v4, "success":Z
    const-wide/16 v5, -0x1

    .line 217
    .local v5, "rowId":J
    const/4 v7, 0x0

    .local v7, "devMCC":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "devMNC":Ljava/lang/String;
    const/4 v9, 0x0

    .line 219
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    if-nez v3, :cond_2b

    .line 220
    monitor-exit p0

    return-wide v5

    .line 223
    :cond_2b
    :try_start_2b
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v10

    .line 224
    .local v10, "apId":J
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 225
    .local v12, "user":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 226
    .local v13, "server":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 227
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 228
    .local v15, "proxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v0

    move/from16 v16, v0

    .line 229
    .local v16, "port":I
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 230
    .local v17, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 231
    .local v18, "mmsc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 232
    .local v19, "apType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v0

    move/from16 v20, v0

    .line 233
    .local v20, "authType":I
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 234
    .local v21, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 236
    .local v22, "apn":Ljava/lang/String;
    const-wide/16 v23, -0x1

    move/from16 v25, v4

    move-object/from16 v4, v21

    .end local v21    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v25, "success":Z
    if-eqz v4, :cond_8b4

    move-wide/from16 v26, v5

    move-object/from16 v5, v22

    .end local v22    # "apn":Ljava/lang/String;
    .local v5, "apn":Ljava/lang/String;
    .local v26, "rowId":J
    if-nez v5, :cond_9a

    move-object/from16 v33, v4

    move-object/from16 v29, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    move-wide/from16 v36, v10

    move-object v9, v15

    move/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move/from16 v7, v20

    goto/16 :goto_8cd

    .line 241
    :cond_9a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x41

    if-le v0, v6, :cond_ab

    .line 242
    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN name maximum length (65)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_2b .. :try_end_a9} :catchall_8d6

    .line 243
    monitor-exit p0

    return-wide v23

    .line 245
    .end local p0    # "this":Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
    :cond_ab
    :try_start_ab
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x78

    if-le v0, v6, :cond_bc

    .line 246
    const-string v0, "ApnSettingsPolicyService"

    const-string v6, "APN excedes maximum length (120)"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_ab .. :try_end_ba} :catchall_8d6

    .line 247
    monitor-exit p0

    return-wide v23

    .line 249
    :cond_bc
    :try_start_bc
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 250
    .local v6, "mcc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 251
    .local v21, "mnc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 253
    .local v22, "mmsPort":Ljava/lang/String;
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 254
    .local v28, "protocol":Ljava/lang/String;
    move-object/from16 v29, v7

    move-object/from16 v7, v28

    .end local v28    # "protocol":Ljava/lang/String;
    .local v7, "protocol":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    invoke-direct {v1, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 255
    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v28, v8

    .end local v8    # "devMNC":Ljava/lang/String;
    .local v28, "devMNC":Ljava/lang/String;
    const-string v8, "Invalid protocol!"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_bc .. :try_end_f0} :catchall_8d6

    .line 256
    monitor-exit p0

    return-wide v23

    .line 259
    .end local v28    # "devMNC":Ljava/lang/String;
    .restart local v8    # "devMNC":Ljava/lang/String;
    :cond_f2
    move-object/from16 v28, v8

    .end local v8    # "devMNC":Ljava/lang/String;
    .restart local v28    # "devMNC":Ljava/lang/String;
    :try_start_f4
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    move-object v8, v0

    .line 260
    .local v8, "roamingProtocol":Ljava/lang/String;
    invoke-direct {v1, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 261
    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v30, v9

    .end local v9    # "devSimOperatorNumeric":Ljava/lang/String;
    .local v30, "devSimOperatorNumeric":Ljava/lang/String;
    const-string v9, "Invalid Roaming Protocol!"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_f4 .. :try_end_106} :catchall_8d6

    .line 262
    monitor-exit p0

    return-wide v23

    .line 265
    .end local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v9    # "devSimOperatorNumeric":Ljava/lang/String;
    :cond_108
    move-object/from16 v30, v9

    .end local v9    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    :try_start_10a
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    move-object v9, v0

    .line 266
    .local v9, "mvno_type":Ljava/lang/String;
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateMVNOType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 267
    const-string v0, "ApnSettingsPolicyService"

    move-object/from16 v31, v9

    .end local v9    # "mvno_type":Ljava/lang/String;
    .local v31, "mvno_type":Ljava/lang/String;
    const-string v9, "Invalid mvno type!"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_10a .. :try_end_11c} :catchall_8d6

    .line 268
    monitor-exit p0

    return-wide v23

    .line 271
    .end local v31    # "mvno_type":Ljava/lang/String;
    .restart local v9    # "mvno_type":Ljava/lang/String;
    :cond_11e
    move-object/from16 v31, v9

    .end local v9    # "mvno_type":Ljava/lang/String;
    .restart local v31    # "mvno_type":Ljava/lang/String;
    :try_start_120
    iget-object v0, v3, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_126
    .catchall {:try_start_120 .. :try_end_126} :catchall_8d6

    move-object v9, v0

    .line 276
    .local v9, "mvno_value":Ljava/lang/String;
    :try_start_127
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 277
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 278
    const/4 v0, -0x1

    .line 280
    .local v0, "iMmsPort":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v24
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_132} :catch_2a1
    .catchall {:try_start_127 .. :try_end_132} :catchall_8d6

    if-nez v24, :cond_16a

    :try_start_134
    const-string v3, "*"
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_136} :catch_157
    .catchall {:try_start_134 .. :try_end_136} :catchall_8d6

    move-object/from16 v32, v9

    move-object/from16 v9, v22

    .end local v22    # "mmsPort":Ljava/lang/String;
    .local v9, "mmsPort":Ljava/lang/String;
    .local v32, "mvno_value":Ljava/lang/String;
    :try_start_13a
    invoke-virtual {v9, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_16e

    .line 281
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_144} :catch_146
    .catchall {:try_start_13a .. :try_end_144} :catchall_8d6

    move v0, v3

    goto :goto_16e

    .line 314
    .end local v0    # "iMmsPort":I
    :catch_146
    move-exception v0

    move-object/from16 v33, v15

    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    goto/16 :goto_2b2

    .end local v32    # "mvno_value":Ljava/lang/String;
    .local v9, "mvno_value":Ljava/lang/String;
    .restart local v22    # "mmsPort":Ljava/lang/String;
    :catch_157
    move-exception v0

    move-object/from16 v32, v9

    move-object/from16 v33, v15

    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v22

    .end local v22    # "mmsPort":Ljava/lang/String;
    .local v9, "mmsPort":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    goto/16 :goto_2b2

    .line 280
    .end local v32    # "mvno_value":Ljava/lang/String;
    .restart local v0    # "iMmsPort":I
    .local v9, "mvno_value":Ljava/lang/String;
    .restart local v22    # "mmsPort":Ljava/lang/String;
    :cond_16a
    move-object/from16 v32, v9

    move-object/from16 v9, v22

    .line 284
    .end local v22    # "mmsPort":Ljava/lang/String;
    .local v9, "mmsPort":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    :cond_16e
    :goto_16e
    const-wide/16 v33, 0x1

    if-nez v2, :cond_185

    cmp-long v22, v33, v10

    if-gtz v22, :cond_177

    goto :goto_185

    :cond_177
    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    goto/16 :goto_216

    :cond_185
    :goto_185
    if-eqz v6, :cond_20a

    .line 285
    :try_start_187
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18b} :catch_1f9
    .catchall {:try_start_187 .. :try_end_18b} :catchall_8d6

    if-eqz v22, :cond_1ec

    move-object/from16 v3, v21

    .end local v21    # "mnc":Ljava/lang/String;
    .local v3, "mnc":Ljava/lang/String;
    if-eqz v3, :cond_1e1

    :try_start_191
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_1e1

    if-eqz v4, :cond_1e1

    .line 286
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_1c7

    if-eqz v5, :cond_1c7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1a5} :catch_1d2
    .catchall {:try_start_191 .. :try_end_1a5} :catchall_8d6

    if-eqz v21, :cond_1c7

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    const/4 v7, -0x1

    .end local v7    # "protocol":Ljava/lang/String;
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v21, "roamingProtocol":Ljava/lang/String;
    if-gt v7, v8, :cond_1c2

    if-gt v7, v0, :cond_1c2

    move/from16 v7, v20

    move-object/from16 v20, v9

    const/4 v9, -0x2

    .end local v9    # "mmsPort":Ljava/lang/String;
    .local v7, "authType":I
    .local v20, "mmsPort":Ljava/lang/String;
    if-gt v9, v7, :cond_216

    const/4 v9, 0x3

    if-ge v9, v7, :cond_1be

    goto/16 :goto_216

    :cond_1be
    move-object/from16 v33, v15

    goto/16 :goto_29e

    .end local v7    # "authType":I
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v20, "authType":I
    :cond_1c2
    move/from16 v7, v20

    move-object/from16 v20, v9

    .end local v9    # "mmsPort":Ljava/lang/String;
    .restart local v7    # "authType":I
    .local v20, "mmsPort":Ljava/lang/String;
    goto :goto_216

    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    :cond_1c7
    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    .end local v9    # "mmsPort":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    goto :goto_216

    .line 314
    .end local v0    # "iMmsPort":I
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    :catch_1d2
    move-exception v0

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    move-object/from16 v33, v15

    .end local v9    # "mmsPort":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_2b2

    .line 285
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v0    # "iMmsPort":I
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    :cond_1e1
    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    .end local v9    # "mmsPort":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    goto :goto_216

    .end local v3    # "mnc":Ljava/lang/String;
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    .local v21, "mnc":Ljava/lang/String;
    :cond_1ec
    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    .end local v9    # "mmsPort":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .local v21, "roamingProtocol":Ljava/lang/String;
    goto :goto_216

    .line 314
    .end local v0    # "iMmsPort":I
    .end local v3    # "mnc":Ljava/lang/String;
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    .local v21, "mnc":Ljava/lang/String;
    :catch_1f9
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    move-object/from16 v33, v15

    .end local v9    # "mmsPort":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .local v21, "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_2b2

    .line 284
    .end local v3    # "mnc":Ljava/lang/String;
    .restart local v0    # "iMmsPort":I
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .restart local v9    # "mmsPort":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    .local v21, "mnc":Ljava/lang/String;
    :cond_20a
    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v9

    .line 288
    .end local v9    # "mmsPort":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .local v21, "roamingProtocol":Ljava/lang/String;
    :cond_216
    :goto_216
    const/4 v9, 0x0

    .line 289
    .end local v25    # "success":Z
    .local v9, "success":Z
    if-nez v2, :cond_23d

    cmp-long v25, v33, v10

    if-lez v25, :cond_23d

    .line 290
    move/from16 v25, v9

    .end local v9    # "success":Z
    .restart local v25    # "success":Z
    :try_start_21f
    const-string v9, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_226} :catch_238
    .catchall {:try_start_21f .. :try_end_226} :catchall_8d6

    move-object/from16 v33, v15

    .end local v15    # "proxy":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :try_start_228
    const-string v15, "addUpdateAp() : invalid ap Id "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_241

    .line 314
    .end local v0    # "iMmsPort":I
    .end local v33    # "proxy":Ljava/lang/String;
    .restart local v15    # "proxy":Ljava/lang/String;
    :catch_238
    move-exception v0

    move-object/from16 v33, v15

    .end local v15    # "proxy":Ljava/lang/String;
    .restart local v33    # "proxy":Ljava/lang/String;
    goto/16 :goto_2b2

    .line 289
    .end local v25    # "success":Z
    .end local v33    # "proxy":Ljava/lang/String;
    .restart local v0    # "iMmsPort":I
    .restart local v9    # "success":Z
    .restart local v15    # "proxy":Ljava/lang/String;
    :cond_23d
    move/from16 v25, v9

    move-object/from16 v33, v15

    .line 292
    .end local v9    # "success":Z
    .end local v15    # "proxy":Ljava/lang/String;
    .restart local v25    # "success":Z
    .restart local v33    # "proxy":Ljava/lang/String;
    :goto_241
    if-eqz v4, :cond_249

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_250

    .line 293
    :cond_249
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap name"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_250
    if-eqz v5, :cond_258

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25f

    .line 296
    :cond_258
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap apn"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_25f
    if-eqz v6, :cond_267

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26e

    .line 299
    :cond_267
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mcc"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_26e
    if-eqz v3, :cond_276

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_27d

    .line 302
    :cond_276
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap mnc"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_27d
    const/4 v2, -0x1

    if-le v2, v8, :cond_287

    .line 305
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap port"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_287
    const/4 v2, -0x1

    if-le v2, v0, :cond_291

    .line 308
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_291
    const/4 v2, -0x2

    if-gt v2, v7, :cond_297

    const/4 v2, 0x3

    if-ge v2, v7, :cond_29e

    .line 311
    :cond_297
    const-string v2, "ApnSettingsPolicyService"

    const-string v9, "addUpdateAp() : invalid ap authType"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_29e} :catch_29f
    .catchall {:try_start_228 .. :try_end_29e} :catchall_8d6

    .line 317
    .end local v0    # "iMmsPort":I
    :cond_29e
    :goto_29e
    goto :goto_2b7

    .line 314
    :catch_29f
    move-exception v0

    goto :goto_2b2

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v32    # "mvno_value":Ljava/lang/String;
    .end local v33    # "proxy":Ljava/lang/String;
    .local v7, "protocol":Ljava/lang/String;
    .local v8, "roamingProtocol":Ljava/lang/String;
    .local v9, "mvno_value":Ljava/lang/String;
    .restart local v15    # "proxy":Ljava/lang/String;
    .local v16, "port":I
    .local v20, "authType":I
    .local v21, "mnc":Ljava/lang/String;
    .restart local v22    # "mmsPort":Ljava/lang/String;
    :catch_2a1
    move-exception v0

    move-object/from16 v32, v9

    move-object/from16 v33, v15

    move-object/from16 v3, v21

    move-object/from16 v21, v8

    move/from16 v8, v16

    move-object/from16 v16, v7

    move/from16 v7, v20

    move-object/from16 v20, v22

    .line 315
    .end local v9    # "mvno_value":Ljava/lang/String;
    .end local v15    # "proxy":Ljava/lang/String;
    .end local v22    # "mmsPort":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v16, "protocol":Ljava/lang/String;
    .local v20, "mmsPort":Ljava/lang/String;
    .local v21, "roamingProtocol":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    .restart local v33    # "proxy":Ljava/lang/String;
    :goto_2b2
    const/16 v25, 0x0

    .line 316
    :try_start_2b4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b7
    if-eqz v25, :cond_89d

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34
    :try_end_2bd
    .catchall {:try_start_2b4 .. :try_end_2bd} :catchall_8d6

    .line 322
    .local v34, "token":J
    :try_start_2bd
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 323
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 324
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2cc} :catch_87b
    .catchall {:try_start_2bd .. :try_end_2cc} :catchall_864

    move-object v9, v2

    .line 326
    .end local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    const/4 v15, 0x4

    if-eqz v9, :cond_32c

    :try_start_2d0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v15, v2, :cond_32c

    .line 328
    const/4 v2, 0x0

    const/4 v15, 0x3

    invoke-virtual {v9, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24
    :try_end_2dc
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2dc} :catch_31b
    .catchall {:try_start_2d0 .. :try_end_2dc} :catchall_30a

    .line 330
    .end local v29    # "devMCC":Ljava/lang/String;
    .local v24, "devMCC":Ljava/lang/String;
    :try_start_2dc
    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2e0} :catch_2f7
    .catchall {:try_start_2dc .. :try_end_2e0} :catchall_2e4

    move-object v2, v15

    move-object/from16 v15, v24

    .end local v28    # "devMNC":Ljava/lang/String;
    .local v15, "devMNC":Ljava/lang/String;
    goto :goto_331

    .line 419
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v15    # "devMNC":Ljava/lang/String;
    .restart local v28    # "devMNC":Ljava/lang/String;
    :catchall_2e4
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v29, v24

    move-object/from16 v17, v28

    move-object/from16 v15, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    goto/16 :goto_899

    .line 416
    :catch_2f7
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v29, v24

    move-object/from16 v17, v28

    move-object/from16 v15, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    goto/16 :goto_891

    .line 419
    .end local v24    # "devMCC":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    :catchall_30a
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v28

    move-object/from16 v15, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    goto/16 :goto_899

    .line 416
    :catch_31b
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v28

    move-object/from16 v15, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    goto/16 :goto_891

    .line 326
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_32c
    const/4 v2, 0x0

    .line 335
    move-object/from16 v2, v28

    move-object/from16 v15, v29

    .end local v28    # "devMNC":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .local v2, "devMNC":Ljava/lang/String;
    .local v15, "devMCC":Ljava/lang/String;
    :goto_331
    :try_start_331
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_331 .. :try_end_335} :catch_84b
    .catchall {:try_start_331 .. :try_end_335} :catchall_832

    move-object/from16 v9, v28

    .line 336
    :try_start_337
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v12, v28

    .line 337
    invoke-direct {v1, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v13, v28

    .line 338
    invoke-direct {v1, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_337 .. :try_end_347} :catch_816
    .catchall {:try_start_337 .. :try_end_347} :catchall_7fa

    move-object/from16 v14, v28

    .line 339
    move-object/from16 v28, v9

    move-object/from16 v9, v33

    .end local v33    # "proxy":Ljava/lang/String;
    .local v9, "proxy":Ljava/lang/String;
    .local v28, "devSimOperatorNumeric":Ljava/lang/String;
    :try_start_34d
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_34d .. :try_end_351} :catch_7e2
    .catchall {:try_start_34d .. :try_end_351} :catchall_7ca

    move-object/from16 v9, v29

    .line 340
    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    .end local v17    # "mmsProxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .local v36, "apId":J
    :try_start_357
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_35b
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_35b} :catch_7b6
    .catchall {:try_start_357 .. :try_end_35b} :catchall_7a2

    move-object v10, v11

    .line 341
    move-object/from16 v11, v18

    .end local v18    # "mmsc":Ljava/lang/String;
    .local v11, "mmsc":Ljava/lang/String;
    :try_start_35e
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_35e .. :try_end_362} :catch_78e
    .catchall {:try_start_35e .. :try_end_362} :catchall_77a

    move-object/from16 v11, v17

    .line 342
    move-object/from16 v17, v15

    move-object/from16 v15, v19

    .end local v19    # "apType":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :try_start_368
    invoke-direct {v1, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_36c
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_36c} :catch_766
    .catchall {:try_start_368 .. :try_end_36c} :catchall_752

    move-object/from16 v15, v18

    .line 344
    :try_start_36e
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v19, v18

    .line 346
    .local v19, "values":Landroid/content/ContentValues;
    move-object/from16 v18, v0

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v0, "name"
    :try_end_37a
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_37a} :catch_73e
    .catchall {:try_start_36e .. :try_end_37a} :catchall_72a

    move-object/from16 v29, v2

    move/from16 v2, p2

    move-object/from16 v38, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v38

    .end local v2    # "devMNC":Ljava/lang/String;
    .local v15, "values":Landroid/content/ContentValues;
    .local v19, "apType":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :try_start_384
    invoke-direct {v1, v2, v15, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "numeric"
    :try_end_38a
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_38a} :catch_716
    .catchall {:try_start_384 .. :try_end_38a} :catchall_702

    .line 349
    move-object/from16 v33, v4

    .end local v4    # "name":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    if-eqz v6, :cond_3c5

    if-nez v3, :cond_391

    goto :goto_3c5

    :cond_391
    :try_start_391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_3a0} :catch_3b3
    .catchall {:try_start_391 .. :try_end_3a0} :catchall_3a1

    goto :goto_3c6

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_3a1
    move-exception v0

    move-object/from16 v22, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    goto/16 :goto_899

    .line 416
    :catch_3b3
    move-exception v0

    move-object/from16 v22, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    goto/16 :goto_891

    .line 349
    .restart local v15    # "values":Landroid/content/ContentValues;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3c5
    :goto_3c5
    const/4 v4, 0x0

    .line 348
    :goto_3c6
    :try_start_3c6
    invoke-direct {v1, v2, v15, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "mcc"

    invoke-direct {v1, v2, v15, v0, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v0, "mnc"

    invoke-direct {v1, v2, v15, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "apn"

    invoke-direct {v1, v2, v15, v0, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v0, "user"

    invoke-direct {v1, v2, v15, v0, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v0, "server"

    invoke-direct {v1, v2, v15, v0, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, "password"

    invoke-direct {v1, v2, v15, v0, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "proxy"

    invoke-direct {v1, v2, v15, v0, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "port"
    :try_end_3f5
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3f5} :catch_6f0
    .catchall {:try_start_3c6 .. :try_end_3f5} :catchall_6de

    if-ltz v8, :cond_3fc

    :try_start_3f7
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3fb
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_3fb} :catch_3b3
    .catchall {:try_start_3f7 .. :try_end_3fb} :catchall_3a1

    goto :goto_3fe

    .line 358
    :cond_3fc
    :try_start_3fc
    const-string v4, ""

    .line 357
    :goto_3fe
    invoke-direct {v1, v2, v15, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v0, "mmsproxy"

    invoke-direct {v1, v2, v15, v0, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v0, "mmsport"
    :try_end_40a
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_40a} :catch_6f0
    .catchall {:try_start_3fc .. :try_end_40a} :catchall_6de

    move-object/from16 v4, v20

    .end local v20    # "mmsPort":Ljava/lang/String;
    .local v4, "mmsPort":Ljava/lang/String;
    :try_start_40c
    invoke-direct {v1, v2, v15, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "mmsc"

    invoke-direct {v1, v2, v15, v0, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_415
    .catch Ljava/lang/Exception; {:try_start_40c .. :try_end_415} :catch_6ca
    .catchall {:try_start_40c .. :try_end_415} :catchall_6b6

    .line 363
    if-eqz v2, :cond_455

    .line 364
    :try_start_417
    const-string v0, "authtype"
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_417 .. :try_end_419} :catch_441
    .catchall {:try_start_417 .. :try_end_419} :catchall_42d

    move-object/from16 v20, v4

    const/4 v4, -0x2

    .end local v4    # "mmsPort":Ljava/lang/String;
    .restart local v20    # "mmsPort":Ljava/lang/String;
    if-ge v4, v7, :cond_423

    const/4 v4, 0x4

    if-le v4, v7, :cond_423

    move v4, v7

    goto :goto_425

    .line 365
    :cond_423
    :try_start_423
    sget v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 364
    :goto_425
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_468

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v20    # "mmsPort":Ljava/lang/String;
    .restart local v4    # "mmsPort":Ljava/lang/String;
    :catchall_42d
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v22, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    .end local v4    # "mmsPort":Ljava/lang/String;
    .restart local v20    # "mmsPort":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v20    # "mmsPort":Ljava/lang/String;
    .restart local v4    # "mmsPort":Ljava/lang/String;
    :catch_441
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v22, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    .end local v4    # "mmsPort":Ljava/lang/String;
    .restart local v20    # "mmsPort":Ljava/lang/String;
    goto/16 :goto_891

    .line 366
    .end local v20    # "mmsPort":Ljava/lang/String;
    .restart local v4    # "mmsPort":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_455
    move-object/from16 v20, v4

    .end local v4    # "mmsPort":Ljava/lang/String;
    .restart local v20    # "mmsPort":Ljava/lang/String;
    if-nez v2, :cond_468

    const/4 v4, -0x2

    if-ge v4, v7, :cond_468

    const/4 v0, 0x4

    if-le v0, v7, :cond_468

    .line 367
    const-string v0, "authtype"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_468
    .catch Ljava/lang/Exception; {:try_start_423 .. :try_end_468} :catch_3b3
    .catchall {:try_start_423 .. :try_end_468} :catchall_3a1

    .line 370
    :cond_468
    :goto_468
    :try_start_468
    const-string/jumbo v0, "type"
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_468 .. :try_end_46b} :catch_6f0
    .catchall {:try_start_468 .. :try_end_46b} :catchall_6de

    move-object/from16 v4, v19

    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "apType":Ljava/lang/String;
    :try_start_46d
    invoke-direct {v1, v2, v15, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_470
    .catch Ljava/lang/Exception; {:try_start_46d .. :try_end_470} :catch_6a2
    .catchall {:try_start_46d .. :try_end_470} :catchall_68e

    .line 372
    if-eqz v29, :cond_52c

    if-eqz v17, :cond_52c

    .line 373
    move-object/from16 v19, v4

    move-object/from16 v4, v29

    .end local v29    # "devMNC":Ljava/lang/String;
    .local v4, "devMNC":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :try_start_478
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22
    :try_end_47c
    .catch Ljava/lang/Exception; {:try_start_478 .. :try_end_47c} :catch_51c
    .catchall {:try_start_478 .. :try_end_47c} :catchall_50c

    if-eqz v22, :cond_504

    move-object/from16 v22, v3

    move-object/from16 v3, v17

    .end local v17    # "devMCC":Ljava/lang/String;
    .local v3, "devMCC":Ljava/lang/String;
    .local v22, "mnc":Ljava/lang/String;
    :try_start_482
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4e2

    .line 374
    const-string v0, "current"
    :try_end_48a
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_48a} :catch_4f6
    .catchall {:try_start_482 .. :try_end_48a} :catchall_4e8

    move-object/from16 v29, v3

    const/16 v23, 0x1

    .end local v3    # "devMCC":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    :try_start_48e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getDeviceSimSlotCnt()I

    move-result v0

    move/from16 v3, v23

    if-le v0, v3, :cond_4c6

    .line 376
    const-string v0, "ApnSettingsPolicyService"

    const-string v3, "IS DUAL SIM"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v0, "current1"
    :try_end_4a6
    .catch Ljava/lang/Exception; {:try_start_48e .. :try_end_4a6} :catch_4d6
    .catchall {:try_start_48e .. :try_end_4a6} :catchall_4ca

    move-object/from16 v17, v4

    const/4 v3, 0x1

    .end local v4    # "devMNC":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    :try_start_4a9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4b0
    .catch Ljava/lang/Exception; {:try_start_4a9 .. :try_end_4b0} :catch_4bc
    .catchall {:try_start_4a9 .. :try_end_4b0} :catchall_4b2

    goto/16 :goto_537

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_4b2
    move-exception v0

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    goto/16 :goto_899

    .line 416
    :catch_4bc
    move-exception v0

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    goto/16 :goto_891

    .line 375
    .end local v17    # "devMNC":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4c6
    move-object/from16 v17, v4

    .end local v4    # "devMNC":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    goto/16 :goto_537

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v4    # "devMNC":Ljava/lang/String;
    :catchall_4ca
    move-exception v0

    move-object/from16 v17, v4

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    .end local v4    # "devMNC":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v17    # "devMNC":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    :catch_4d6
    move-exception v0

    move-object/from16 v17, v4

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    .end local v4    # "devMNC":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    goto/16 :goto_891

    .line 373
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .restart local v3    # "devMCC":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4e2
    move-object/from16 v29, v3

    move-object/from16 v17, v4

    const/4 v3, 0x1

    .end local v3    # "devMCC":Ljava/lang/String;
    .end local v4    # "devMNC":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    goto :goto_537

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v29    # "devMCC":Ljava/lang/String;
    .restart local v3    # "devMCC":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    :catchall_4e8
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v17, v4

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    .end local v3    # "devMCC":Ljava/lang/String;
    .end local v4    # "devMNC":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .restart local v3    # "devMCC":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    :catch_4f6
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v17, v4

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    .end local v3    # "devMCC":Ljava/lang/String;
    .end local v4    # "devMNC":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    goto/16 :goto_891

    .line 373
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .local v3, "mnc":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .local v17, "devMCC":Ljava/lang/String;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_504
    move-object/from16 v22, v3

    move-object/from16 v29, v17

    const/4 v3, 0x1

    move-object/from16 v17, v4

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "devMNC":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    goto :goto_537

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :catchall_50c
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v29, v17

    move-object/from16 v17, v4

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "devMNC":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .restart local v4    # "devMNC":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :catch_51c
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v29, v17

    move-object/from16 v17, v4

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v4, v16

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "devMNC":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    goto/16 :goto_891

    .line 372
    .end local v19    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "apType":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .local v17, "devMCC":Ljava/lang/String;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    .local v29, "devMNC":Ljava/lang/String;
    :cond_52c
    move-object/from16 v22, v3

    move-object/from16 v19, v4

    const/4 v3, 0x1

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    .line 382
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    :goto_537
    :try_start_537
    iget v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I
    :try_end_539
    .catch Ljava/lang/Exception; {:try_start_537 .. :try_end_539} :catch_684
    .catchall {:try_start_537 .. :try_end_539} :catchall_67a

    const/16 v4, 0x11

    if-lt v0, v4, :cond_586

    .line 385
    :try_start_53d
    const-string/jumbo v0, "protocol"
    :try_end_540
    .catch Ljava/lang/Exception; {:try_start_53d .. :try_end_540} :catch_57c
    .catchall {:try_start_53d .. :try_end_540} :catchall_572

    move-object/from16 v4, v16

    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    :try_start_542
    invoke-direct {v1, v2, v15, v0, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v0, "roaming_protocol"
    :try_end_548
    .catch Ljava/lang/Exception; {:try_start_542 .. :try_end_548} :catch_56a
    .catchall {:try_start_542 .. :try_end_548} :catchall_562

    move-object/from16 v3, v21

    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .local v3, "roamingProtocol":Ljava/lang/String;
    :try_start_54a
    invoke-direct {v1, v2, v15, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54d
    .catch Ljava/lang/Exception; {:try_start_54a .. :try_end_54d} :catch_558
    .catchall {:try_start_54a .. :try_end_54d} :catchall_54e

    goto :goto_58a

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_54e
    move-exception v0

    move-object/from16 v21, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    goto/16 :goto_899

    .line 416
    :catch_558
    move-exception v0

    move-object/from16 v21, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    goto/16 :goto_891

    .line 419
    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    :catchall_562
    move-exception v0

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v3    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    :catch_56a
    move-exception v0

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v3    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    :catchall_572
    move-exception v0

    move-object/from16 v4, v16

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v16    # "protocol":Ljava/lang/String;
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    :catch_57c
    move-exception v0

    move-object/from16 v4, v16

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v16    # "protocol":Ljava/lang/String;
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    goto/16 :goto_891

    .line 382
    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    :cond_586
    move-object/from16 v4, v16

    move-object/from16 v3, v21

    .line 389
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    :goto_58a
    :try_start_58a
    const-string/jumbo v0, "mvno_type"
    :try_end_58d
    .catch Ljava/lang/Exception; {:try_start_58a .. :try_end_58d} :catch_670
    .catchall {:try_start_58a .. :try_end_58d} :catchall_666

    move-object/from16 v21, v3

    move-object/from16 v3, v31

    .end local v31    # "mvno_type":Ljava/lang/String;
    .local v3, "mvno_type":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    :try_start_591
    invoke-direct {v1, v2, v15, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v0, "mvno_match_data"
    :try_end_597
    .catch Ljava/lang/Exception; {:try_start_591 .. :try_end_597} :catch_65c
    .catchall {:try_start_591 .. :try_end_597} :catchall_652

    move-object/from16 v31, v3

    move-object/from16 v3, v32

    .end local v32    # "mvno_value":Ljava/lang/String;
    .local v3, "mvno_value":Ljava/lang/String;
    .restart local v31    # "mvno_type":Ljava/lang/String;
    :try_start_59b
    invoke-direct {v1, v2, v15, v0, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v15}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_617

    .line 393
    if-eqz v2, :cond_5ce

    .line 395
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 396
    invoke-virtual {v0, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 397
    .local v0, "url":Landroid/net/Uri;
    if-eqz v0, :cond_5b6

    const/4 v2, 0x1

    goto :goto_5b7

    :cond_5b6
    const/4 v2, 0x0

    :goto_5b7
    move/from16 v25, v2

    .line 398
    if-eqz v25, :cond_5c9

    .line 399
    const-string v2, "ApnSettingsPolicyService"
    :try_end_5bd
    .catch Ljava/lang/Exception; {:try_start_59b .. :try_end_5bd} :catch_648
    .catchall {:try_start_59b .. :try_end_5bd} :catchall_63e

    move-object/from16 v32, v3

    .end local v3    # "mvno_value":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    :try_start_5bf
    const-string v3, "addUpdateAp Created rowUri : "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .end local v26    # "rowId":J
    .local v2, "rowId":J
    goto :goto_5cd

    .line 398
    .end local v2    # "rowId":J
    .end local v32    # "mvno_value":Ljava/lang/String;
    .restart local v3    # "mvno_value":Ljava/lang/String;
    .restart local v26    # "rowId":J
    :cond_5c9
    move-object/from16 v32, v3

    .end local v3    # "mvno_value":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    move-wide/from16 v2, v26

    .line 402
    .end local v0    # "url":Landroid/net/Uri;
    .end local v26    # "rowId":J
    .restart local v2    # "rowId":J
    :goto_5cd
    goto :goto_622

    .line 404
    .end local v2    # "rowId":J
    .end local v32    # "mvno_value":Ljava/lang/String;
    .restart local v3    # "mvno_value":Ljava/lang/String;
    .restart local v26    # "rowId":J
    :cond_5ce
    move-object/from16 v32, v3

    .end local v3    # "mvno_value":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;
    :try_end_5d2
    .catch Ljava/lang/Exception; {:try_start_5bf .. :try_end_5d2} :catch_636
    .catchall {:try_start_5bf .. :try_end_5d2} :catchall_62e

    move-wide/from16 v2, v36

    .end local v36    # "apId":J
    .local v2, "apId":J
    :try_start_5d4
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_5d8
    .catch Ljava/lang/Exception; {:try_start_5d4 .. :try_end_5d8} :catch_60d
    .catchall {:try_start_5d4 .. :try_end_5d8} :catchall_603

    .line 405
    .restart local v0    # "url":Landroid/net/Uri;
    move-wide/from16 v36, v2

    .end local v2    # "apId":J
    .restart local v36    # "apId":J
    :try_start_5da
    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 406
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v15, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 407
    .local v2, "rowCount":I
    if-lez v2, :cond_5ea

    const/16 v23, 0x1

    goto :goto_5ec

    :cond_5ea
    const/16 v23, 0x0

    :goto_5ec
    move/from16 v25, v23

    .line 408
    if-eqz v25, :cond_5fe

    .line 409
    const-string v3, "ApnSettingsPolicyService"

    move/from16 v16, v2

    .end local v2    # "rowCount":I
    .local v16, "rowCount":I
    const-string v2, "addUpdateAp Updated rowUri : "

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .end local v26    # "rowId":J
    .local v2, "rowId":J
    goto :goto_602

    .line 408
    .end local v16    # "rowCount":I
    .local v2, "rowCount":I
    .restart local v26    # "rowId":J
    :cond_5fe
    move/from16 v16, v2

    .end local v2    # "rowCount":I
    .restart local v16    # "rowCount":I
    move-wide/from16 v2, v26

    .line 412
    .end local v0    # "url":Landroid/net/Uri;
    .end local v16    # "rowCount":I
    .end local v26    # "rowId":J
    .local v2, "rowId":J
    :goto_602
    goto :goto_622

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v36    # "apId":J
    .local v2, "apId":J
    .restart local v26    # "rowId":J
    :catchall_603
    move-exception v0

    move-wide/from16 v36, v2

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v2    # "apId":J
    .restart local v36    # "apId":J
    goto/16 :goto_899

    .line 416
    .end local v36    # "apId":J
    .restart local v2    # "apId":J
    :catch_60d
    move-exception v0

    move-wide/from16 v36, v2

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v2    # "apId":J
    .restart local v36    # "apId":J
    goto/16 :goto_891

    .line 414
    .end local v32    # "mvno_value":Ljava/lang/String;
    .restart local v3    # "mvno_value":Ljava/lang/String;
    .restart local v15    # "values":Landroid/content/ContentValues;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_617
    move-object/from16 v32, v3

    .end local v3    # "mvno_value":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "addUpdateAp Error: Empty dataset."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_620
    .catch Ljava/lang/Exception; {:try_start_5da .. :try_end_620} :catch_636
    .catchall {:try_start_5da .. :try_end_620} :catchall_62e

    move-wide/from16 v2, v26

    .line 419
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v26    # "rowId":J
    .local v2, "rowId":J
    :goto_622
    :try_start_622
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_625
    .catchall {:try_start_622 .. :try_end_625} :catchall_8d6

    .line 420
    move-wide/from16 v26, v2

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    goto/16 :goto_8b2

    .line 419
    .end local v2    # "rowId":J
    .restart local v26    # "rowId":J
    :catchall_62e
    move-exception v0

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    goto/16 :goto_899

    .line 416
    :catch_636
    move-exception v0

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    goto/16 :goto_891

    .line 419
    .end local v32    # "mvno_value":Ljava/lang/String;
    .restart local v3    # "mvno_value":Ljava/lang/String;
    :catchall_63e
    move-exception v0

    move-object/from16 v32, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mvno_value":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v32    # "mvno_value":Ljava/lang/String;
    .restart local v3    # "mvno_value":Ljava/lang/String;
    :catch_648
    move-exception v0

    move-object/from16 v32, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mvno_value":Ljava/lang/String;
    .restart local v32    # "mvno_value":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v31    # "mvno_type":Ljava/lang/String;
    .local v3, "mvno_type":Ljava/lang/String;
    :catchall_652
    move-exception v0

    move-object/from16 v31, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mvno_type":Ljava/lang/String;
    .restart local v31    # "mvno_type":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v31    # "mvno_type":Ljava/lang/String;
    .restart local v3    # "mvno_type":Ljava/lang/String;
    :catch_65c
    move-exception v0

    move-object/from16 v31, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mvno_type":Ljava/lang/String;
    .restart local v31    # "mvno_type":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .local v3, "roamingProtocol":Ljava/lang/String;
    :catchall_666
    move-exception v0

    move-object/from16 v21, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .restart local v3    # "roamingProtocol":Ljava/lang/String;
    :catch_670
    move-exception v0

    move-object/from16 v21, v3

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "roamingProtocol":Ljava/lang/String;
    .restart local v21    # "roamingProtocol":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v4    # "protocol":Ljava/lang/String;
    .local v16, "protocol":Ljava/lang/String;
    :catchall_67a
    move-exception v0

    move-object/from16 v4, v16

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v16    # "protocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    :catch_684
    move-exception v0

    move-object/from16 v4, v16

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v16    # "protocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v19    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .local v3, "mnc":Ljava/lang/String;
    .local v4, "apType":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catchall_68e
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v19    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "apType":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catch_6a2
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v20    # "mmsPort":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "mmsPort":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catchall_6b6
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v20    # "mmsPort":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v20    # "mmsPort":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "mmsPort":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catch_6ca
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v20    # "mmsPort":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catchall_6de
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catch_6f0
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catchall_702
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    .local v29, "devMNC":Ljava/lang/String;
    :catch_716
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object/from16 v38, v29

    move-object/from16 v29, v17

    move-object/from16 v17, v38

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v29, "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v19    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .local v2, "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :catchall_72a
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v19, v15

    move-object/from16 v4, v16

    move-object/from16 v29, v17

    move-object/from16 v17, v2

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v15    # "apType":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v19    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v15    # "apType":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :catch_73e
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v19, v15

    move-object/from16 v4, v16

    move-object/from16 v29, v17

    move-object/from16 v17, v2

    move-object v15, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v15    # "apType":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v19    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v15    # "apType":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :catchall_752
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object/from16 v29, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "devMCC":Ljava/lang/String;
    :catch_766
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object/from16 v29, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :catchall_77a
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v29, v15

    move-object/from16 v4, v16

    move-object/from16 v15, v19

    move-object/from16 v18, v11

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :catch_78e
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v29, v15

    move-object/from16 v4, v16

    move-object/from16 v15, v19

    move-object/from16 v18, v11

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v18, "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :catchall_7a2
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v29, v15

    move-object/from16 v4, v16

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_899

    .line 416
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v17    # "devMNC":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :catch_7b6
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-object/from16 v29, v15

    move-object/from16 v4, v16

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v17    # "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_891

    .line 419
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v10, "apId":J
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :catchall_7ca
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-wide/from16 v36, v10

    move-object/from16 v29, v15

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v17, v2

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto/16 :goto_899

    .line 416
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v10, "apId":J
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :catch_7e2
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v33, v4

    move-wide/from16 v36, v10

    move-object/from16 v29, v15

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v17, v2

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto/16 :goto_891

    .line 419
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v28    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    .local v10, "apId":J
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :catchall_7fa
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v28, v9

    move-wide/from16 v36, v10

    move-object/from16 v29, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v33

    move-object/from16 v17, v2

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v9, "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v28    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto/16 :goto_899

    .line 416
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v28    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    .local v10, "apId":J
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :catch_816
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v28, v9

    move-wide/from16 v36, v10

    move-object/from16 v29, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v33

    move-object/from16 v17, v2

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object v15, v9

    move-object/from16 v9, v28

    .end local v2    # "devMNC":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v9, "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v28    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto/16 :goto_891

    .line 419
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v28    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v2    # "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    .local v10, "apId":J
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :catchall_832
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v29, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v17, v2

    move-object v2, v9

    move-object/from16 v9, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object v15, v9

    move-object v9, v2

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v2, "devSimOperatorNumeric":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v9, "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto :goto_899

    .line 416
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v36    # "apId":J
    .local v2, "devMNC":Ljava/lang/String;
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    .local v10, "apId":J
    .local v15, "devMCC":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :catch_84b
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v29, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v17, v2

    move-object v2, v9

    move-object/from16 v9, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object v15, v9

    move-object v9, v2

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v2, "devSimOperatorNumeric":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v9, "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto :goto_891

    .line 419
    .end local v2    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v9    # "proxy":Ljava/lang/String;
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v15    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v10, "apId":J
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .local v28, "devMNC":Ljava/lang/String;
    .restart local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :catchall_864
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v28

    move-object v15, v9

    move-object/from16 v9, v30

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v17    # "mmsProxy":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .restart local v9    # "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .restart local v15    # "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    goto :goto_899

    .line 416
    .end local v9    # "proxy":Ljava/lang/String;
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v15    # "apType":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v36    # "apId":J
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v10, "apId":J
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v17    # "mmsProxy":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :catch_87b
    move-exception v0

    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v28

    move-object v15, v9

    move-object/from16 v9, v30

    .line 417
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v28    # "devMNC":Ljava/lang/String;
    .end local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .local v4, "protocol":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .local v15, "proxy":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    :goto_891
    :try_start_891
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_894
    .catchall {:try_start_891 .. :try_end_894} :catchall_898

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_894
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    goto :goto_8b2

    .line 419
    :catchall_898
    move-exception v0

    :goto_899
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw v0
    :try_end_89d
    .catchall {:try_start_894 .. :try_end_89d} :catchall_8d6

    .line 319
    .end local v9    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v15    # "proxy":Ljava/lang/String;
    .end local v22    # "mnc":Ljava/lang/String;
    .end local v34    # "token":J
    .end local v36    # "apId":J
    .restart local v3    # "mnc":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v10, "apId":J
    .restart local v16    # "protocol":Ljava/lang/String;
    .local v17, "mmsProxy":Ljava/lang/String;
    .restart local v28    # "devMNC":Ljava/lang/String;
    .restart local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .local v33, "proxy":Ljava/lang/String;
    :cond_89d
    move-object/from16 v22, v3

    move-wide/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v33

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    .end local v3    # "mnc":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v17    # "mmsProxy":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    .local v9, "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v22    # "mnc":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    move-object/from16 v17, v28

    move-object v15, v9

    move-object/from16 v9, v30

    .line 422
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v28    # "devMNC":Ljava/lang/String;
    .end local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .local v9, "devSimOperatorNumeric":Ljava/lang/String;
    .local v15, "proxy":Ljava/lang/String;
    .local v17, "devMNC":Ljava/lang/String;
    .restart local v18    # "mmsc":Ljava/lang/String;
    .restart local v19    # "apType":Ljava/lang/String;
    :goto_8b2
    monitor-exit p0

    return-wide v26

    .line 236
    .end local v6    # "mcc":Ljava/lang/String;
    .end local v21    # "roamingProtocol":Ljava/lang/String;
    .end local v26    # "rowId":J
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v31    # "mvno_type":Ljava/lang/String;
    .end local v32    # "mvno_value":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "apId":J
    .local v4, "name":Ljava/lang/String;
    .local v5, "rowId":J
    .local v7, "devMCC":Ljava/lang/String;
    .local v8, "devMNC":Ljava/lang/String;
    .local v10, "apId":J
    .local v16, "port":I
    .local v17, "mmsProxy":Ljava/lang/String;
    .local v20, "authType":I
    .local v22, "apn":Ljava/lang/String;
    :cond_8b4
    move-object/from16 v33, v4

    move-wide/from16 v26, v5

    move-object/from16 v29, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v9

    move-wide/from16 v36, v10

    move-object v9, v15

    move/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move/from16 v7, v20

    move-object/from16 v5, v22

    .line 237
    .end local v4    # "name":Ljava/lang/String;
    .end local v16    # "port":I
    .end local v17    # "mmsProxy":Ljava/lang/String;
    .end local v18    # "mmsc":Ljava/lang/String;
    .end local v19    # "apType":Ljava/lang/String;
    .end local v20    # "authType":I
    .end local v22    # "apn":Ljava/lang/String;
    .local v5, "apn":Ljava/lang/String;
    .local v7, "authType":I
    .local v8, "port":I
    .local v9, "proxy":Ljava/lang/String;
    .local v10, "mmsProxy":Ljava/lang/String;
    .restart local v11    # "mmsc":Ljava/lang/String;
    .local v15, "apType":Ljava/lang/String;
    .restart local v26    # "rowId":J
    .restart local v28    # "devMNC":Ljava/lang/String;
    .restart local v29    # "devMCC":Ljava/lang/String;
    .restart local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    .restart local v36    # "apId":J
    :goto_8cd
    :try_start_8cd
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid value"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d4
    .catchall {:try_start_8cd .. :try_end_8d4} :catchall_8d6

    .line 238
    monitor-exit p0

    return-wide v23

    .line 212
    .end local v5    # "apn":Ljava/lang/String;
    .end local v7    # "authType":I
    .end local v8    # "port":I
    .end local v9    # "proxy":Ljava/lang/String;
    .end local v10    # "mmsProxy":Ljava/lang/String;
    .end local v11    # "mmsc":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "server":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "apType":Ljava/lang/String;
    .end local v25    # "success":Z
    .end local v26    # "rowId":J
    .end local v28    # "devMNC":Ljava/lang/String;
    .end local v29    # "devMCC":Ljava/lang/String;
    .end local v30    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v36    # "apId":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "isNewAp":Z
    .end local p3    # "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    :catchall_8d6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apId"    # J

    monitor-enter p0

    .line 180
    const/4 v0, -0x1

    .line 182
    .local v0, "rowCount":I
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 185
    .local v1, "token":J
    const-wide/16 v3, 0x1

    cmp-long v3, v3, p2

    const/4 v4, 0x0

    if-lez v3, :cond_19

    .line 186
    const-string v3, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_58

    .line 187
    monitor-exit p0

    return v4

    .line 190
    .end local p0    # "this":Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
    :cond_19
    :try_start_19
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 191
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 192
    const-string v5, "ApnSettingsPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_41} :catch_47
    .catchall {:try_start_19 .. :try_end_41} :catchall_45

    .line 196
    .end local v3    # "uri":Landroid/net/Uri;
    :try_start_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_58

    goto :goto_4e

    :catchall_45
    move-exception v3

    goto :goto_54

    .line 193
    :catch_47
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_58

    .line 197
    :goto_4e
    nop

    .line 198
    if-lez v0, :cond_52

    const/4 v4, 0x1

    :cond_52
    monitor-exit p0

    return v4

    .line 196
    :goto_54
    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 179
    .end local v0    # "rowCount":I
    .end local v1    # "token":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "apId":J
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 489
    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b

    .line 491
    :cond_24
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->retrieveApnListFromDatabase()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 494
    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4e

    .line 495
    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget v1, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_5f

    .line 500
    :cond_4e
    iget-object v1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 504
    :goto_5f
    return-object v0
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apId"    # J

    .line 687
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 688
    const/4 v4, 0x0

    .line 693
    .local v4, "cursor":Landroid/database/Cursor;
    const-wide/16 v5, 0x1

    cmp-long v0, v5, v2

    const/4 v5, 0x0

    if-lez v0, :cond_18

    .line 694
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v6, "getApnSettings : apId is invalid"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-object v5

    .line 697
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 699
    .local v6, "token":J
    :try_start_1c
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 700
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 701
    if-eqz v4, :cond_129

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 702
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 703
    .local v0, "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    const-string v8, "_id"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 704
    .local v10, "id":J
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 705
    const-string/jumbo v8, "name"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v8, "mcc"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 707
    const-string/jumbo v8, "mnc"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 708
    const-string v8, "apn"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v8, "user"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 710
    const-string/jumbo v8, "server"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 711
    const-string/jumbo v8, "password"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 712
    const-string/jumbo v8, "proxy"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v8, "port"

    invoke-direct {v1, v8, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "strPort":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ae

    .line 715
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 716
    .local v12, "port":I
    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 718
    .end local v12    # "port":I
    :cond_ae
    const-string/jumbo v12, "mmsproxy"

    invoke-direct {v1, v12, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 719
    const-string/jumbo v12, "mmsport"

    invoke-direct {v1, v12, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 720
    const-string/jumbo v12, "mmsc"

    invoke-direct {v1, v12, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 721
    const-string v12, "authtype"

    invoke-direct {v1, v12, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 722
    .local v12, "strAuthType":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_df

    .line 723
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 724
    .local v13, "authType":I
    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 726
    .end local v13    # "authType":I
    :cond_df
    const-string/jumbo v13, "type"

    invoke-direct {v1, v13, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 727
    iget v13, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v14, 0x11

    if-lt v13, v14, :cond_101

    .line 730
    const-string/jumbo v13, "protocol"

    invoke-direct {v1, v13, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 731
    const-string/jumbo v13, "roaming_protocol"

    invoke-direct {v1, v13, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 733
    :cond_101
    const-string/jumbo v13, "mvno_type"

    invoke-direct {v1, v13, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    .line 734
    .local v13, "strMvnoType":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_110

    .line 735
    iput-object v13, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 737
    :cond_110
    const-string/jumbo v14, "mvno_match_data"

    invoke-direct {v1, v14, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 738
    .local v14, "strMvnoValue":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_11f

    .line 739
    iput-object v14, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_11f} :catch_12e
    .catchall {:try_start_1c .. :try_end_11f} :catchall_12c

    .line 741
    :cond_11f
    nop

    .line 746
    if-eqz v4, :cond_125

    .line 747
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_125
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    return-object v0

    .line 746
    .end local v0    # "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    .end local v8    # "strPort":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "id":J
    .end local v12    # "strAuthType":Ljava/lang/String;
    .end local v13    # "strMvnoType":Ljava/lang/String;
    .end local v14    # "strMvnoValue":Ljava/lang/String;
    :cond_129
    if-eqz v4, :cond_137

    .line 747
    goto :goto_134

    .line 746
    :catchall_12c
    move-exception v0

    goto :goto_13c

    .line 743
    :catch_12e
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_12c

    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_137

    .line 747
    :goto_134
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_137
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    nop

    .line 751
    return-object v5

    .line 746
    :goto_13c
    if-eqz v4, :cond_141

    .line 747
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_141
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    throw v0
.end method

.method public declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    monitor-enter p0

    .line 756
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "apn":Lcom/samsung/android/knox/net/apn/ApnSettings;
    const/4 v1, 0x0

    .line 760
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "getPreferredApn():"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_9c

    .line 764
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string/jumbo v7, "name"

    const-string v8, "apn"

    filled-new-array {v4, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "name ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_70
    .catchall {:try_start_12 .. :try_end_2e} :catchall_6e

    move-object v1, v4

    .line 768
    if-eqz v1, :cond_68

    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 769
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 770
    .local v4, "apnId":J
    const-string v6, "ApnSettingsPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPreferredApn():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_68

    .line 772
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v6
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_62} :catch_66
    .catchall {:try_start_31 .. :try_end_62} :catchall_64

    move-object v0, v6

    goto :goto_68

    .line 779
    .end local v4    # "apnId":J
    :catchall_64
    move-exception v4

    goto :goto_93

    .line 776
    :catch_66
    move-exception v4

    goto :goto_71

    .line 779
    :cond_68
    :goto_68
    if-eqz v1, :cond_8d

    .line 780
    :try_start_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_9c

    goto :goto_8d

    .line 779
    .end local p0    # "this":Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
    :catchall_6e
    move-exception v4

    goto :goto_93

    .line 776
    :catch_70
    move-exception v4

    .line 777
    .local v4, "e":Ljava/lang/Exception;
    :goto_71
    :try_start_71
    const-string v5, "ApnSettingsPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPreferredApn Ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_6e

    .line 779
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_8d

    .line 780
    :try_start_8a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_8d
    :goto_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_9c

    .line 783
    nop

    .line 785
    monitor-exit p0

    return-object v0

    .line 779
    :goto_93
    if-eqz v1, :cond_98

    .line 780
    :try_start_95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_98
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    throw v4
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_9c

    .line 755
    .end local v0    # "apn":Lcom/samsung/android/knox/net/apn/ApnSettings;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "token":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 912
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 865
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 871
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 882
    return-void
.end method

.method public declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apId"    # J

    monitor-enter p0

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "success":Z
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_89

    .line 153
    .local v1, "token":J
    const-wide/16 v3, 0x0

    cmp-long v5, v3, p2

    if-eqz v5, :cond_2f

    cmp-long v5, v3, p2

    if-lez v5, :cond_2f

    .line 154
    :try_start_13
    const-string v3, "ApnSettingsPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2d
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_75

    .line 168
    :catchall_2b
    move-exception v3

    goto :goto_85

    .line 165
    :catch_2d
    move-exception v3

    goto :goto_7c

    .line 156
    :cond_2f
    :try_start_2f
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v5
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_7b
    .catchall {:try_start_2f .. :try_end_33} :catchall_79

    if-eqz v5, :cond_75

    .line 157
    :try_start_35
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "apn_id"

    cmp-long v3, v3, p2

    if-nez v3, :cond_43

    const-wide/16 v3, -0x1

    goto :goto_44

    :cond_43
    move-wide v3, p2

    :goto_44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    iget-object v3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 161
    .local v3, "rowCount":I
    if-lez v3, :cond_5c

    const/4 v4, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v4, 0x0

    :goto_5d
    move v0, v4

    .line 162
    const-string v4, "ApnSettingsPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPreferedAp() row count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_75} :catch_2d
    .catchall {:try_start_35 .. :try_end_75} :catchall_2b

    .line 168
    .end local v3    # "rowCount":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_75
    :goto_75
    :try_start_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_89

    .line 169
    goto :goto_83

    .line 168
    .end local p0    # "this":Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
    :catchall_79
    move-exception v3

    goto :goto_85

    .line 165
    :catch_7b
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_79

    .line 168
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_7f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_89

    .line 169
    nop

    .line 170
    :goto_83
    monitor-exit p0

    return v0

    .line 168
    :goto_85
    :try_start_85
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    throw v3
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_89

    .line 146
    .end local v0    # "success":Z
    .end local v1    # "token":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "apId":J
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public systemReady()V
    .registers 1

    .line 877
    return-void
.end method
