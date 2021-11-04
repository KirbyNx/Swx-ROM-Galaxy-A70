.class public abstract Lcom/android/internal/net/IOemNetd$Stub;
.super Landroid/os/Binder;
.source "IOemNetd.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IOemNetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_addMecUid:I = 0x1a

.field static final TRANSACTION_addMptcpChain:I = 0x4f

.field static final TRANSACTION_addMptcpIpAcceptRule:I = 0x55

.field static final TRANSACTION_addMptcpLinkIface:I = 0x4d

.field static final TRANSACTION_addMptcpSocksRule:I = 0x4b

.field static final TRANSACTION_addMptcpSocksSkipRule:I = 0x49

.field static final TRANSACTION_addMptcpSocksSkipRuleProto:I = 0x57

.field static final TRANSACTION_addMptcpSourcePortAcceptRule:I = 0x59

.field static final TRANSACTION_addMptcpSourceRoute:I = 0x60

.field static final TRANSACTION_addMptcpUidSocksRule:I = 0x51

.field static final TRANSACTION_addPortFwdRules:I = 0x6a

.field static final TRANSACTION_addUidToMptcpChain:I = 0x53

.field static final TRANSACTION_allSocketsDestroy:I = 0x19

.field static final TRANSACTION_bandwidthFlushFocTables:I = 0x18

.field static final TRANSACTION_bandwidthSetFocBlockList:I = 0x17

.field static final TRANSACTION_cleanAllBlock:I = 0xf

.field static final TRANSACTION_clearEbpfMap:I = 0x3e

.field static final TRANSACTION_delMptcpIpAcceptRule:I = 0x56

.field static final TRANSACTION_delMptcpSourcePortAcceptRule:I = 0x5a

.field static final TRANSACTION_delMptcpSourceRoute:I = 0x61

.field static final TRANSACTION_disableMptcpMode:I = 0x48

.field static final TRANSACTION_enableDscpConfig:I = 0x69

.field static final TRANSACTION_enableKnoxVpnFlagForTether:I = 0x40

.field static final TRANSACTION_enableMptcpModes:I = 0x47

.field static final TRANSACTION_enterpriseAddUidRanges:I = 0x63

.field static final TRANSACTION_enterpriseBlockUidRanges:I = 0x65

.field static final TRANSACTION_enterpriseRemoveUidRanges:I = 0x64

.field static final TRANSACTION_enterpriseUnblockUidRanges:I = 0x66

.field static final TRANSACTION_firewallBuild:I = 0x1e

.field static final TRANSACTION_firewallSetRuleMobileData:I = 0x20

.field static final TRANSACTION_firewallSetRuleWifi:I = 0x1f

.field static final TRANSACTION_getDnbaStats:I = 0x25

.field static final TRANSACTION_getVideoStats:I = 0x6

.field static final TRANSACTION_gmsCoreSetUidUrlMobileDataRule:I = 0x21

.field static final TRANSACTION_gmsCoreSetUidUrlWifiRule:I = 0x22

.field static final TRANSACTION_iptablesSetBidirectionalTCRule:I = 0x2f

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_knoxVpnBlockDnsQueriesForUid:I = 0x31

.field static final TRANSACTION_knoxVpnDestroyBlockedKnoxNetwork:I = 0x35

.field static final TRANSACTION_knoxVpnExemptDnsQueryForUid:I = 0x33

.field static final TRANSACTION_knoxVpnExemptUidFromKnoxVpn:I = 0x36

.field static final TRANSACTION_knoxVpnInsertUidForDnsAuthorization:I = 0x39

.field static final TRANSACTION_knoxVpnRemoveExemptUidFromKnoxVpn:I = 0x37

.field static final TRANSACTION_knoxVpnRemoveExemptedDnsQueryForUid:I = 0x34

.field static final TRANSACTION_knoxVpnRemoveUidFromDnsAuthorization:I = 0x38

.field static final TRANSACTION_knoxVpnUnblockDnsQueriesForUid:I = 0x32

.field static final TRANSACTION_makeBlockChildChain:I = 0xb

.field static final TRANSACTION_makeVideoCallChain:I = 0x3

.field static final TRANSACTION_modifyEpdg:I = 0x43

.field static final TRANSACTION_nalMmsFirewallBuild:I = 0x67

.field static final TRANSACTION_networkClearFocUidList:I = 0x16

.field static final TRANSACTION_networkClearMdoUidList:I = 0x13

.field static final TRANSACTION_networkGuardCreateChain:I = 0x26

.field static final TRANSACTION_networkGuardDeleteChain:I = 0x27

.field static final TRANSACTION_networkGuardDeleteWhiteListRule:I = 0x2a

.field static final TRANSACTION_networkGuardDisable:I = 0x29

.field static final TRANSACTION_networkGuardEnable:I = 0x28

.field static final TRANSACTION_networkGuardSetProtocolAcceptRule:I = 0x2d

.field static final TRANSACTION_networkGuardSetUidRangeAcceptRule:I = 0x2b

.field static final TRANSACTION_networkGuardSetUidRule:I = 0x2c

.field static final TRANSACTION_networkSetFocNetId:I = 0x15

.field static final TRANSACTION_networkSetFocUidList:I = 0x14

.field static final TRANSACTION_networkSetMdoNetId:I = 0x12

.field static final TRANSACTION_networkSetMdoUid:I = 0x11

.field static final TRANSACTION_registerDomainFilterEventListener:I = 0x7

.field static final TRANSACTION_registerNetdTetherEventListener:I = 0x41

.field static final TRANSACTION_registerOemUnsolicitedEventListener:I = 0x2

.field static final TRANSACTION_removeMecUid:I = 0x1b

.field static final TRANSACTION_removeMptcpChain:I = 0x50

.field static final TRANSACTION_removeMptcpLinkIface:I = 0x4e

.field static final TRANSACTION_removeMptcpSocksRule:I = 0x4c

.field static final TRANSACTION_removeMptcpSocksSkipRule:I = 0x4a

.field static final TRANSACTION_removeMptcpSocksSkipRuleProto:I = 0x58

.field static final TRANSACTION_removeMptcpUidSocksRule:I = 0x52

.field static final TRANSACTION_removeUidFromMptcpChain:I = 0x54

.field static final TRANSACTION_runKnoxFirewallRulesCommand:I = 0x3f

.field static final TRANSACTION_runKnoxRulesCommand:I = 0xa

.field static final TRANSACTION_runTcpMonitorShellCommand:I = 0x46

.field static final TRANSACTION_runVpnRulesCommand:I = 0x45

.field static final TRANSACTION_setAdaptiveSpeedLimitRule:I = 0x23

.field static final TRANSACTION_setAllowListIPs:I = 0xe

.field static final TRANSACTION_setBlockAllDNSPackets:I = 0xc

.field static final TRANSACTION_setBlockAllPackets:I = 0x10

.field static final TRANSACTION_setBlockListIPs:I = 0xd

.field static final TRANSACTION_setEpdgInterfaceDropRule:I = 0x44

.field static final TRANSACTION_setKnoxGuardExemptRule:I = 0x30

.field static final TRANSACTION_setLimitUidRuleMap:I = 0x24

.field static final TRANSACTION_setMptcpDestBaseMarkRule:I = 0x5f

.field static final TRANSACTION_setMptcpPrivateIpRoute:I = 0x5e

.field static final TRANSACTION_setMptcpTcpBufferSize:I = 0x5b

.field static final TRANSACTION_setMptcpUIDRoute:I = 0x62

.field static final TRANSACTION_setMtuValueMptcp:I = 0x5c

.field static final TRANSACTION_setNetworkInfo:I = 0x3a

.field static final TRANSACTION_setWhiteListUidMmsRules:I = 0x68

.field static final TRANSACTION_startMec:I = 0x1c

.field static final TRANSACTION_startVideoStats:I = 0x4

.field static final TRANSACTION_stopMec:I = 0x1d

.field static final TRANSACTION_stopVideoStats:I = 0x5

.field static final TRANSACTION_tcSetTCRule:I = 0x2e

.field static final TRANSACTION_unregisterDomainFilterEventListener:I = 0x8

.field static final TRANSACTION_unregisterNetdTetherEventListener:I = 0x42

.field static final TRANSACTION_updateDomainFilterCache:I = 0x9

.field static final TRANSACTION_updateInputFilterAppWideRules:I = 0x3d

.field static final TRANSACTION_updateInputFilterExemptRules:I = 0x3b

.field static final TRANSACTION_updateInputFilterUserWideRules:I = 0x3c

.field static final TRANSACTION_updateMptcpSourceRule:I = 0x5d


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 415
    const-string v0, "com$android$internal$net$IOemNetd"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 418
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 419
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/net/IOemNetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 413
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 427
    if-nez p0, :cond_4

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_4
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 431
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/net/IOemNetd;

    if-eqz v1, :cond_14

    .line 432
    move-object v1, v0

    check-cast v1, Lcom/android/internal/net/IOemNetd;

    return-object v1

    .line 434
    :cond_14
    new-instance v1, Lcom/android/internal/net/IOemNetd$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/net/IOemNetd;
    .registers 1

    .line 3669
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/net/IOemNetd;)Z
    .registers 3
    .param p0, "impl"    # Lcom/android/internal/net/IOemNetd;

    .line 3659
    sget-object v0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetd;

    if-nez v0, :cond_c

    .line 3662
    if-eqz p0, :cond_a

    .line 3663
    sput-object p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/net/IOemNetd;

    .line 3664
    const/4 v0, 0x1

    return v0

    .line 3666
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 3660
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 438
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    sget-object v11, Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 443
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_78d

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_792

    .line 1541
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1525
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1529
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1531
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1533
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1535
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1536
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1537
    return v12

    .line 1515
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1519
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    move v0, v12

    .line 1520
    .local v0, "_arg1":Z
    :cond_4a
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->enableDscpConfig(IZ)V

    .line 1521
    return v12

    .line 1505
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_4e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1509
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c

    move v0, v12

    .line 1510
    .restart local v0    # "_arg1":Z
    :cond_5c
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setWhiteListUidMmsRules(IZ)V

    .line 1511
    return v12

    .line 1499
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_60
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->nalMmsFirewallBuild()V

    .line 1501
    return v12

    .line 1491
    :pswitch_67
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 1494
    .local v0, "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->enterpriseUnblockUidRanges([Landroid/net/UidRangeParcel;)V

    .line 1495
    return v12

    .line 1483
    .end local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    :pswitch_76
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 1486
    .restart local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->enterpriseBlockUidRanges([Landroid/net/UidRangeParcel;)V

    .line 1487
    return v12

    .line 1475
    .end local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    :pswitch_85
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 1478
    .restart local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->enterpriseRemoveUidRanges([Landroid/net/UidRangeParcel;)V

    .line 1479
    return v12

    .line 1463
    .end local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    :pswitch_94
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1467
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRangeParcel;

    .line 1470
    .local v2, "_arg2":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->enterpriseAddUidRanges(ILjava/lang/String;[Landroid/net/UidRangeParcel;)V

    .line 1471
    return v12

    .line 1446
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[Landroid/net/UidRangeParcel;
    :pswitch_ab
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b6

    move v1, v12

    goto :goto_b7

    :cond_b6
    move v1, v0

    .line 1450
    .local v1, "_arg0":Z
    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1452
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1454
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1456
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1457
    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v2, v6

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    return v12

    .line 1433
    .end local v1    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_d4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    return v12

    .line 1420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_ea
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1426
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1427
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    return v12

    .line 1403
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_100
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10b

    move v1, v12

    goto :goto_10c

    :cond_10b
    move v1, v0

    .line 1407
    .local v1, "_arg0":Z
    :goto_10c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1409
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1411
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1413
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1414
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v2, v6

    move-object v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    return v12

    .line 1390
    .end local v1    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_129
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_133

    move v0, v12

    .line 1394
    .local v0, "_arg0":Z
    :cond_133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1396
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1397
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V

    .line 1398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    return v12

    .line 1377
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_142
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14c

    move v0, v12

    .line 1381
    .restart local v0    # "_arg0":Z
    :cond_14c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1383
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1384
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    return v12

    .line 1366
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_15b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1371
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->setMtuValueMptcp(Ljava/lang/String;I)V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    return v12

    .line 1355
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_16d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1359
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1360
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    return v12

    .line 1342
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_17f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1348
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1349
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    return v12

    .line 1329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_195
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1333
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1335
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1336
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    return v12

    .line 1312
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1ab
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1318
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1320
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1322
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1323
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    return v12

    .line 1295
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1d1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1299
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1301
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1303
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1305
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1306
    .restart local v16    # "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    return v12

    .line 1282
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1f7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1288
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    return v12

    .line 1269
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_20d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1273
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1276
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    return v12

    .line 1256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_223
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1262
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1263
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    return v12

    .line 1243
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_239
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1249
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1250
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V

    .line 1251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    return v12

    .line 1224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_24f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1228
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1230
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1232
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1234
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1236
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1237
    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd$Stub;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    return v12

    .line 1205
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_27c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1209
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1211
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1213
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1215
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1217
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1218
    .restart local v18    # "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    return v12

    .line 1194
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_2a9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    return v12

    .line 1183
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2bb
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    return v12

    .line 1174
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2cd
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->removeMptcpLinkIface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    return v12

    .line 1165
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2db
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpLinkIface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    return v12

    .line 1148
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2e9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1152
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1154
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1156
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1158
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1159
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    return v12

    .line 1131
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_30f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1135
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1137
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1139
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1141
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1142
    .restart local v16    # "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    return v12

    .line 1118
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_335
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1125
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    return v12

    .line 1105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_34b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    return v12

    .line 1098
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_361
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->disableMptcpMode()V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    return v12

    .line 1089
    :pswitch_36b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->enableMptcpModes(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    return v12

    .line 1077
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_379
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1085
    return v12

    .line 1063
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_38f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1067
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1071
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1073
    return v12

    .line 1053
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3a9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b7

    move v0, v12

    .line 1058
    .local v0, "_arg1":Z
    :cond_3b7
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V

    .line 1059
    return v12

    .line 1039
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3bb
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c6

    move v1, v12

    goto :goto_3c7

    :cond_3c6
    move v1, v0

    .line 1043
    .local v1, "_arg0":Z
    :goto_3c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1047
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d6

    move v0, v12

    .line 1048
    .local v0, "_arg3":Z
    :cond_3d6
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/net/IOemNetd$Stub;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1049
    return v12

    .line 1033
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_3da
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->unregisterNetdTetherEventListener()V

    .line 1035
    return v12

    .line 1025
    :pswitch_3e1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/INetdTetherEventListener;

    move-result-object v0

    .line 1028
    .local v0, "_arg0":Lcom/android/internal/net/INetdTetherEventListener;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V

    .line 1029
    return v12

    .line 1017
    .end local v0    # "_arg0":Lcom/android/internal/net/INetdTetherEventListener;
    :pswitch_3f0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3fa

    move v0, v12

    .line 1020
    .local v0, "_arg0":Z
    :cond_3fa
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->enableKnoxVpnFlagForTether(Z)V

    .line 1021
    return v12

    .line 1005
    .end local v0    # "_arg0":Z
    :pswitch_3fe
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1009
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    return v12

    .line 997
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_414
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->clearEbpfMap(I)V

    .line 1001
    return v12

    .line 985
    .end local v0    # "_arg0":I
    :pswitch_41f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 989
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 992
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->updateInputFilterAppWideRules([III)V

    .line 993
    return v12

    .line 973
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_432
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 977
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 980
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->updateInputFilterUserWideRules([III)V

    .line 981
    return v12

    .line 963
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_445
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 967
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->updateInputFilterExemptRules(II)V

    .line 969
    return v12

    .line 951
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_454
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 955
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_462

    move v0, v12

    .line 957
    .local v0, "_arg1":Z
    :cond_462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 958
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v1, v0, v2}, Lcom/android/internal/net/IOemNetd$Stub;->setNetworkInfo(IZI)V

    .line 959
    return v12

    .line 943
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":I
    :pswitch_46a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 946
    .local v0, "_arg0":[I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnInsertUidForDnsAuthorization([I)V

    .line 947
    return v12

    .line 937
    .end local v0    # "_arg0":[I
    :pswitch_475
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnRemoveUidFromDnsAuthorization()V

    .line 939
    return v12

    .line 927
    :pswitch_47c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 931
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 932
    .local v1, "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 933
    return v12

    .line 917
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    :pswitch_48f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 922
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V

    .line 923
    return v12

    .line 911
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    :pswitch_4a2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnDestroyBlockedKnoxNetwork()V

    .line 913
    return v12

    .line 901
    :pswitch_4a9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 905
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 906
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 907
    return v12

    .line 891
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    :pswitch_4bc
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 896
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V

    .line 897
    return v12

    .line 881
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    :pswitch_4cf
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 886
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 887
    return v12

    .line 871
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    :pswitch_4e2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 875
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    .line 876
    .restart local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V

    .line 877
    return v12

    .line 859
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRangeParcel;
    :pswitch_4f5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4ff

    move v0, v12

    .line 863
    .local v0, "_arg0":Z
    :cond_4ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 866
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    .line 867
    return v12

    .line 851
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_50b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_515

    move v0, v12

    .line 854
    .restart local v0    # "_arg0":Z
    :cond_515
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->iptablesSetBidirectionalTCRule(Z)V

    .line 855
    return v12

    .line 839
    .end local v0    # "_arg0":Z
    :pswitch_519
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_523

    move v0, v12

    .line 843
    .restart local v0    # "_arg0":Z
    :cond_523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 845
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 847
    return v12

    .line 831
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_52f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 834
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardSetProtocolAcceptRule(I)V

    .line 835
    return v12

    .line 819
    .end local v0    # "_arg0":I
    :pswitch_53a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 823
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_549

    move v2, v12

    goto :goto_54a

    :cond_549
    move v2, v0

    .line 825
    .local v2, "_arg1":Z
    :goto_54a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_551

    move v0, v12

    .line 826
    .local v0, "_arg2":Z
    :cond_551
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardSetUidRule(IZZ)V

    .line 827
    return v12

    .line 809
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_555
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 813
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardSetUidRangeAcceptRule(II)V

    .line 815
    return v12

    .line 803
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_564
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardDeleteWhiteListRule()V

    .line 805
    return v12

    .line 797
    :pswitch_56b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardDisable()V

    .line 799
    return v12

    .line 789
    :pswitch_572
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_57c

    move v0, v12

    .line 792
    .local v0, "_arg0":Z
    :cond_57c
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardEnable(Z)V

    .line 793
    return v12

    .line 783
    .end local v0    # "_arg0":Z
    :pswitch_580
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardDeleteChain()V

    .line 785
    return v12

    .line 777
    :pswitch_587
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->networkGuardCreateChain()V

    .line 779
    return v12

    .line 769
    :pswitch_58e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->getDnbaStats()[Landroid/net/TetherStatsParcel;

    move-result-object v0

    .line 771
    .local v0, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 773
    return v12

    .line 759
    .end local v0    # "_result":[Landroid/net/TetherStatsParcel;
    :pswitch_59c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 763
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5aa

    move v0, v12

    .line 764
    .local v0, "_arg1":Z
    :cond_5aa
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setLimitUidRuleMap(IZ)V

    .line 765
    return v12

    .line 749
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_5ae
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 753
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5bc

    move v0, v12

    .line 754
    .restart local v0    # "_arg1":Z
    :cond_5bc
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setAdaptiveSpeedLimitRule(IZ)V

    .line 755
    return v12

    .line 737
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_5c0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 741
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V

    .line 745
    return v12

    .line 725
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_5d3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 729
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 731
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V

    .line 733
    return v12

    .line 715
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_5e6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5f4

    move v0, v12

    .line 720
    .local v0, "_arg1":Z
    :cond_5f4
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->firewallSetRuleMobileData(IZ)V

    .line 721
    return v12

    .line 705
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_5f8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_606

    move v0, v12

    .line 710
    .restart local v0    # "_arg1":Z
    :cond_606
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/net/IOemNetd$Stub;->firewallSetRuleWifi(IZ)V

    .line 711
    return v12

    .line 699
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_60a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->firewallBuild()V

    .line 701
    return v12

    .line 691
    :pswitch_611
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->stopMec(Ljava/lang/String;)V

    .line 695
    return v12

    .line 679
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_61c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->startMec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return v12

    .line 671
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_62f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->removeMecUid(I)V

    .line 675
    return v12

    .line 663
    .end local v0    # "_arg0":I
    :pswitch_63a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->addMecUid(I)V

    .line 667
    return v12

    .line 653
    .end local v0    # "_arg0":I
    :pswitch_645
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    sget-object v0, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    .line 657
    .local v0, "_arg0":[Landroid/net/UidRangeParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 658
    .local v1, "_arg1":[I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->allSocketsDestroy([Landroid/net/UidRangeParcel;[I)V

    .line 659
    return v12

    .line 647
    .end local v0    # "_arg0":[Landroid/net/UidRangeParcel;
    .end local v1    # "_arg1":[I
    :pswitch_658
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->bandwidthFlushFocTables()V

    .line 649
    return v12

    .line 637
    :pswitch_65f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_669

    move v0, v12

    .line 641
    .local v0, "_arg0":Z
    :cond_669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->bandwidthSetFocBlockList(ZI)V

    .line 643
    return v12

    .line 631
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_671
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->networkClearFocUidList()V

    .line 633
    return v12

    .line 623
    :pswitch_678
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->networkSetFocNetId(I)V

    .line 627
    return v12

    .line 615
    .end local v0    # "_arg0":I
    :pswitch_683
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 618
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->networkSetFocUidList(I)V

    .line 619
    return v12

    .line 609
    .end local v0    # "_arg0":I
    :pswitch_68e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->networkClearMdoUidList()V

    .line 611
    return v12

    .line 601
    :pswitch_695
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 604
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->networkSetMdoNetId(I)V

    .line 605
    return v12

    .line 591
    .end local v0    # "_arg0":I
    :pswitch_6a0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6aa

    move v0, v12

    .line 595
    .local v0, "_arg0":Z
    :cond_6aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->networkSetMdoUid(ZI)V

    .line 597
    return v12

    .line 585
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_6b2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->setBlockAllPackets()V

    .line 587
    return v12

    .line 579
    :pswitch_6b9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->cleanAllBlock()V

    .line 581
    return v12

    .line 571
    :pswitch_6c0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setAllowListIPs(Ljava/lang/String;)V

    .line 575
    return v12

    .line 563
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6cb
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setBlockListIPs(Ljava/lang/String;)V

    .line 567
    return v12

    .line 555
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6d6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6e0

    move v0, v12

    .line 558
    .local v0, "_arg0":Z
    :cond_6e0
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->setBlockAllDNSPackets(Z)V

    .line 559
    return v12

    .line 549
    .end local v0    # "_arg0":Z
    :pswitch_6e4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->makeBlockChildChain()V

    .line 551
    return v12

    .line 537
    :pswitch_6eb
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 541
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    return v12

    .line 527
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_701
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 532
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/net/IOemNetd$Stub;->updateDomainFilterCache(I[Ljava/lang/String;)V

    .line 533
    return v12

    .line 521
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_710
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->unregisterDomainFilterEventListener()V

    .line 523
    return v12

    .line 513
    :pswitch_717
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IDomainFilterEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IDomainFilterEventListener;

    move-result-object v0

    .line 516
    .local v0, "_arg0":Lcom/android/internal/net/IDomainFilterEventListener;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 517
    return v12

    .line 499
    .end local v0    # "_arg0":Lcom/android/internal/net/IDomainFilterEventListener;
    :pswitch_726
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 506
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    move-result-object v3

    .line 507
    .local v3, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 509
    return v12

    .line 487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Landroid/net/TetherStatsParcel;
    :pswitch_740
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 494
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->stopVideoStats(Ljava/lang/String;II)V

    .line 495
    return v12

    .line 475
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_753
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 481
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/net/IOemNetd$Stub;->startVideoStats(Ljava/lang/String;II)V

    .line 483
    return v12

    .line 469
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_766
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->makeVideoCallChain()V

    .line 471
    return v12

    .line 460
    :pswitch_76d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    invoke-virtual {v7, v0}, Lcom/android/internal/net/IOemNetd$Stub;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    return v12

    .line 452
    .end local v0    # "_arg0":Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    :pswitch_77f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/IOemNetd$Stub;->isAlive()Z

    move-result v0

    .line 454
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    return v12

    .line 447
    .end local v0    # "_result":Z
    :cond_78d
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    return v12

    nop

    :pswitch_data_792
    .packed-switch 0x1
        :pswitch_77f
        :pswitch_76d
        :pswitch_766
        :pswitch_753
        :pswitch_740
        :pswitch_726
        :pswitch_717
        :pswitch_710
        :pswitch_701
        :pswitch_6eb
        :pswitch_6e4
        :pswitch_6d6
        :pswitch_6cb
        :pswitch_6c0
        :pswitch_6b9
        :pswitch_6b2
        :pswitch_6a0
        :pswitch_695
        :pswitch_68e
        :pswitch_683
        :pswitch_678
        :pswitch_671
        :pswitch_65f
        :pswitch_658
        :pswitch_645
        :pswitch_63a
        :pswitch_62f
        :pswitch_61c
        :pswitch_611
        :pswitch_60a
        :pswitch_5f8
        :pswitch_5e6
        :pswitch_5d3
        :pswitch_5c0
        :pswitch_5ae
        :pswitch_59c
        :pswitch_58e
        :pswitch_587
        :pswitch_580
        :pswitch_572
        :pswitch_56b
        :pswitch_564
        :pswitch_555
        :pswitch_53a
        :pswitch_52f
        :pswitch_519
        :pswitch_50b
        :pswitch_4f5
        :pswitch_4e2
        :pswitch_4cf
        :pswitch_4bc
        :pswitch_4a9
        :pswitch_4a2
        :pswitch_48f
        :pswitch_47c
        :pswitch_475
        :pswitch_46a
        :pswitch_454
        :pswitch_445
        :pswitch_432
        :pswitch_41f
        :pswitch_414
        :pswitch_3fe
        :pswitch_3f0
        :pswitch_3e1
        :pswitch_3da
        :pswitch_3bb
        :pswitch_3a9
        :pswitch_38f
        :pswitch_379
        :pswitch_36b
        :pswitch_361
        :pswitch_34b
        :pswitch_335
        :pswitch_30f
        :pswitch_2e9
        :pswitch_2db
        :pswitch_2cd
        :pswitch_2bb
        :pswitch_2a9
        :pswitch_27c
        :pswitch_24f
        :pswitch_239
        :pswitch_223
        :pswitch_20d
        :pswitch_1f7
        :pswitch_1d1
        :pswitch_1ab
        :pswitch_195
        :pswitch_17f
        :pswitch_16d
        :pswitch_15b
        :pswitch_142
        :pswitch_129
        :pswitch_100
        :pswitch_ea
        :pswitch_d4
        :pswitch_ab
        :pswitch_94
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_60
        :pswitch_4e
        :pswitch_3c
        :pswitch_19
    .end packed-switch
.end method
