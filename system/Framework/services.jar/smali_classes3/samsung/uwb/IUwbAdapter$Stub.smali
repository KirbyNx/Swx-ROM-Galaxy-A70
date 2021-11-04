.class public abstract Lsamsung/uwb/IUwbAdapter$Stub;
.super Landroid/os/Binder;
.source "IUwbAdapter.java"

# interfaces
.implements Lsamsung/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/IUwbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsamsung/uwb/IUwbAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "samsung.uwb.IUwbAdapter"

.field static final TRANSACTION_checkRestrict:I = 0x2b

.field static final TRANSACTION_closeSession:I = 0x13

.field static final TRANSACTION_controllerMulticastListUpdate:I = 0x2f

.field static final TRANSACTION_deprecate0:I = 0x3

.field static final TRANSACTION_deprecate1:I = 0xa

.field static final TRANSACTION_deprecate10:I = 0x1b

.field static final TRANSACTION_deprecate11:I = 0x20

.field static final TRANSACTION_deprecate12:I = 0x21

.field static final TRANSACTION_deprecate13:I = 0x23

.field static final TRANSACTION_deprecate14:I = 0x24

.field static final TRANSACTION_deprecate15:I = 0x25

.field static final TRANSACTION_deprecate16:I = 0x26

.field static final TRANSACTION_deprecate17:I = 0x27

.field static final TRANSACTION_deprecate18:I = 0x28

.field static final TRANSACTION_deprecate19:I = 0x2d

.field static final TRANSACTION_deprecate2:I = 0xb

.field static final TRANSACTION_deprecate20:I = 0x2e

.field static final TRANSACTION_deprecate21:I = 0x22

.field static final TRANSACTION_deprecate22:I = 0x6

.field static final TRANSACTION_deprecate23:I = 0x16

.field static final TRANSACTION_deprecate3:I = 0xc

.field static final TRANSACTION_deprecate4:I = 0xd

.field static final TRANSACTION_deprecate5:I = 0xe

.field static final TRANSACTION_deprecate6:I = 0xf

.field static final TRANSACTION_deprecate7:I = 0x10

.field static final TRANSACTION_deprecate8:I = 0x11

.field static final TRANSACTION_deprecate9:I = 0x1a

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_enableRangeDataNtf:I = 0x19

.field static final TRANSACTION_getAntennaPair:I = 0x29

.field static final TRANSACTION_getAntennaPairConfig:I = 0x2c

.field static final TRANSACTION_getAppConfigurations:I = 0x1d

.field static final TRANSACTION_getDecentChannelNumber:I = 0x4

.field static final TRANSACTION_getDecentPreambleCode:I = 0x5

.field static final TRANSACTION_getExtAppConfigurations:I = 0x1f

.field static final TRANSACTION_getExtDeviceCapability:I = 0x31

.field static final TRANSACTION_getRanMultiplier:I = 0x34

.field static final TRANSACTION_getRangingCount:I = 0x18

.field static final TRANSACTION_getRxAntennaPair:I = 0x2a

.field static final TRANSACTION_getSessionCount:I = 0x9

.field static final TRANSACTION_getSessionState:I = 0x8

.field static final TRANSACTION_getUwbDeviceTimeStamp:I = 0x35

.field static final TRANSACTION_getUwbMaxPpm:I = 0x37

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_openSession:I = 0x12

.field static final TRANSACTION_rangingStart:I = 0x14

.field static final TRANSACTION_rangingStop:I = 0x15

.field static final TRANSACTION_registerRangingCallback:I = 0x32

.field static final TRANSACTION_registerUwbCallback:I = 0x33

.field static final TRANSACTION_sendBlinkData:I = 0x30

.field static final TRANSACTION_sendData:I = 0x36

.field static final TRANSACTION_setAppConfigurations:I = 0x1c

.field static final TRANSACTION_setExtAppConfigurations:I = 0x1e

.field static final TRANSACTION_setRangingDataSamplingRate:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 271
    const-string v0, "samsung.uwb.IUwbAdapter"

    invoke-virtual {p0, p0, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IUwbAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 279
    if-nez p0, :cond_4

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_4
    const-string v0, "samsung.uwb.IUwbAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 283
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lsamsung/uwb/IUwbAdapter;

    if-eqz v1, :cond_14

    .line 284
    move-object v1, v0

    check-cast v1, Lsamsung/uwb/IUwbAdapter;

    return-object v1

    .line 286
    :cond_14
    new-instance v1, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lsamsung/uwb/IUwbAdapter;
    .registers 1

    .line 2109
    sget-object v0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->sDefaultImpl:Lsamsung/uwb/IUwbAdapter;

    return-object v0
.end method

.method public static setDefaultImpl(Lsamsung/uwb/IUwbAdapter;)Z
    .registers 3
    .param p0, "impl"    # Lsamsung/uwb/IUwbAdapter;

    .line 2099
    sget-object v0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->sDefaultImpl:Lsamsung/uwb/IUwbAdapter;

    if-nez v0, :cond_c

    .line 2102
    if-eqz p0, :cond_a

    .line 2103
    sput-object p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->sDefaultImpl:Lsamsung/uwb/IUwbAdapter;

    .line 2104
    const/4 v0, 0x1

    return v0

    .line 2106
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 2100
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 290
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "samsung.uwb.IUwbAdapter"

    .line 295
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_3c7

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_3cc

    .line 839
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 831
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getUwbMaxPpm()I

    move-result v0

    .line 833
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    return v12

    .line 817
    .end local v0    # "_result":I
    :pswitch_27
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 821
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 823
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 824
    .local v2, "_arg2":[B
    invoke-virtual {v7, v0, v1, v2}, Lsamsung/uwb/IUwbAdapter$Stub;->sendData(I[B[B)I

    move-result v3

    .line 825
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    return v12

    .line 803
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_41
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getUwbDeviceTimeStamp()Lsamsung/uwb/UwbDeviceTimeStamp;

    move-result-object v1

    .line 805
    .local v1, "_result":Lsamsung/uwb/UwbDeviceTimeStamp;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    if-eqz v1, :cond_54

    .line 807
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    invoke-virtual {v1, v10, v12}, Lsamsung/uwb/UwbDeviceTimeStamp;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_57

    .line 811
    :cond_54
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    :goto_57
    return v12

    .line 795
    .end local v1    # "_result":Lsamsung/uwb/UwbDeviceTimeStamp;
    :pswitch_58
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getRanMultiplier()B

    move-result v0

    .line 797
    .local v0, "_result":B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 799
    return v12

    .line 783
    .end local v0    # "_result":B
    :pswitch_66
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 787
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lsamsung/uwb/IUwbCallback$Stub;->asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IUwbCallback;

    move-result-object v1

    .line 788
    .local v1, "_arg1":Lsamsung/uwb/IUwbCallback;
    invoke-virtual {v7, v0, v1}, Lsamsung/uwb/IUwbAdapter$Stub;->registerUwbCallback(ILsamsung/uwb/IUwbCallback;)Z

    move-result v2

    .line 789
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    return v12

    .line 771
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lsamsung/uwb/IUwbCallback;
    .end local v2    # "_result":Z
    :pswitch_80
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 775
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lsamsung/uwb/IRangingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IRangingCallback;

    move-result-object v1

    .line 776
    .local v1, "_arg1":Lsamsung/uwb/IRangingCallback;
    invoke-virtual {v7, v0, v1}, Lsamsung/uwb/IUwbAdapter$Stub;->registerRangingCallback(ILsamsung/uwb/IRangingCallback;)Z

    move-result v2

    .line 777
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    return v12

    .line 757
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lsamsung/uwb/IRangingCallback;
    .end local v2    # "_result":Z
    :pswitch_9a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getExtDeviceCapability()Lsamsung/uwb/DeviceCapabilityParameters;

    move-result-object v1

    .line 759
    .local v1, "_result":Lsamsung/uwb/DeviceCapabilityParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    if-eqz v1, :cond_ad

    .line 761
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    invoke-virtual {v1, v10, v12}, Lsamsung/uwb/DeviceCapabilityParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b0

    .line 765
    :cond_ad
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    :goto_b0
    return v12

    .line 743
    .end local v1    # "_result":Lsamsung/uwb/DeviceCapabilityParameters;
    :pswitch_b1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 747
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 749
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 750
    .local v2, "_arg2":[B
    invoke-virtual {v7, v0, v1, v2}, Lsamsung/uwb/IUwbAdapter$Stub;->sendBlinkData(IB[B)B

    move-result v3

    .line 751
    .local v3, "_result":B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 753
    return v12

    .line 725
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":B
    :pswitch_cb
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 729
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .line 731
    .local v13, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .line 733
    .local v14, "_arg2":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 735
    .local v15, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 736
    .local v16, "_arg4":[I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lsamsung/uwb/IUwbAdapter$Stub;->controllerMulticastListUpdate(IBB[I[I)B

    move-result v0

    .line 737
    .local v0, "_result":B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 739
    return v12

    .line 718
    .end local v0    # "_result":B
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":B
    .end local v14    # "_arg2":B
    .end local v15    # "_arg3":[I
    .end local v16    # "_arg4":[I
    :pswitch_f5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate20()V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    return v12

    .line 711
    :pswitch_ff
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate19()V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    return v12

    .line 701
    :pswitch_109
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 704
    .local v0, "_arg0":B
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->getAntennaPairConfig(B)I

    move-result v1

    .line 705
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    return v12

    .line 693
    .end local v0    # "_arg0":B
    .end local v1    # "_result":I
    :pswitch_11b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->checkRestrict()I

    move-result v0

    .line 695
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    return v12

    .line 685
    .end local v0    # "_result":I
    :pswitch_129
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getRxAntennaPair()[B

    move-result-object v0

    .line 687
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 689
    return v12

    .line 675
    .end local v0    # "_result":[B
    :pswitch_137
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 678
    .local v0, "_arg0":B
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->getAntennaPair(B)I

    move-result v1

    .line 679
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    return v12

    .line 668
    .end local v0    # "_arg0":B
    .end local v1    # "_result":I
    :pswitch_149
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate18()V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    return v12

    .line 661
    :pswitch_153
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate17()V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    return v12

    .line 654
    :pswitch_15d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate16()V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    return v12

    .line 647
    :pswitch_167
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate15()V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    return v12

    .line 640
    :pswitch_171
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate14()V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    return v12

    .line 633
    :pswitch_17b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate13()V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    return v12

    .line 626
    :pswitch_185
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate21()V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    return v12

    .line 619
    :pswitch_18f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate12()V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    return v12

    .line 612
    :pswitch_199
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate11()V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    return v12

    .line 594
    :pswitch_1a3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 599
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v1, v2}, Lsamsung/uwb/IUwbAdapter$Stub;->getExtAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigExtParameters;

    move-result-object v3

    .line 600
    .local v3, "_result":Lsamsung/uwb/AppConfigExtParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v3, :cond_1be

    .line 602
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    invoke-virtual {v3, v10, v12}, Lsamsung/uwb/AppConfigExtParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c1

    .line 606
    :cond_1be
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    :goto_1c1
    return v12

    .line 577
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Lsamsung/uwb/AppConfigExtParameters;
    :pswitch_1c2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 581
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d8

    .line 582
    sget-object v1, Lsamsung/uwb/AppConfigExtParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsamsung/uwb/AppConfigExtParameters;

    .local v1, "_arg1":Lsamsung/uwb/AppConfigExtParameters;
    goto :goto_1d9

    .line 585
    .end local v1    # "_arg1":Lsamsung/uwb/AppConfigExtParameters;
    :cond_1d8
    const/4 v1, 0x0

    .line 587
    .restart local v1    # "_arg1":Lsamsung/uwb/AppConfigExtParameters;
    :goto_1d9
    invoke-virtual {v7, v0, v1}, Lsamsung/uwb/IUwbAdapter$Stub;->setExtAppConfigurations(ILsamsung/uwb/AppConfigExtParameters;)I

    move-result v2

    .line 588
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    return v12

    .line 559
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lsamsung/uwb/AppConfigExtParameters;
    .end local v2    # "_result":I
    :pswitch_1e4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 563
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 564
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v1, v2}, Lsamsung/uwb/IUwbAdapter$Stub;->getAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigParameters;

    move-result-object v3

    .line 565
    .local v3, "_result":Lsamsung/uwb/AppConfigParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v3, :cond_1ff

    .line 567
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v3, v10, v12}, Lsamsung/uwb/AppConfigParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_202

    .line 571
    :cond_1ff
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    :goto_202
    return v12

    .line 542
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Lsamsung/uwb/AppConfigParameters;
    :pswitch_203
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 546
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_219

    .line 547
    sget-object v1, Lsamsung/uwb/AppConfigParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsamsung/uwb/AppConfigParameters;

    .local v1, "_arg1":Lsamsung/uwb/AppConfigParameters;
    goto :goto_21a

    .line 550
    .end local v1    # "_arg1":Lsamsung/uwb/AppConfigParameters;
    :cond_219
    const/4 v1, 0x0

    .line 552
    .restart local v1    # "_arg1":Lsamsung/uwb/AppConfigParameters;
    :goto_21a
    invoke-virtual {v7, v0, v1}, Lsamsung/uwb/IUwbAdapter$Stub;->setAppConfigurations(ILsamsung/uwb/AppConfigParameters;)I

    move-result v2

    .line 553
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return v12

    .line 535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lsamsung/uwb/AppConfigParameters;
    .end local v2    # "_result":I
    :pswitch_225
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate10()V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    return v12

    .line 528
    :pswitch_22f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate9()V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    return v12

    .line 516
    :pswitch_239
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 521
    .local v1, "_arg1":B
    invoke-virtual {v7, v0, v1}, Lsamsung/uwb/IUwbAdapter$Stub;->enableRangeDataNtf(IB)I

    move-result v2

    .line 522
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    return v12

    .line 506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :pswitch_24f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->getRangingCount(I)I

    move-result v1

    .line 510
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    return v12

    .line 494
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_261
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 499
    .local v1, "_arg1":B
    invoke-virtual {v7, v0, v1}, Lsamsung/uwb/IUwbAdapter$Stub;->setRangingDataSamplingRate(IB)I

    move-result v2

    .line 500
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    return v12

    .line 487
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    .end local v2    # "_result":I
    :pswitch_277
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate23()V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    return v12

    .line 477
    :pswitch_281
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->rangingStop(I)I

    move-result v1

    .line 481
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    return v12

    .line 467
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_293
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->rangingStart(I)I

    move-result v1

    .line 471
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    return v12

    .line 457
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2a5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 460
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->closeSession(I)I

    move-result v1

    .line 461
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    return v12

    .line 432
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2b7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 436
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 438
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d2

    .line 439
    sget-object v1, Lsamsung/uwb/UwbDefaultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsamsung/uwb/UwbDefaultConfig;

    move-object v15, v1

    .local v1, "_arg2":Lsamsung/uwb/UwbDefaultConfig;
    goto :goto_2d4

    .line 442
    .end local v1    # "_arg2":Lsamsung/uwb/UwbDefaultConfig;
    :cond_2d2
    const/4 v1, 0x0

    move-object v15, v1

    .line 445
    .local v15, "_arg2":Lsamsung/uwb/UwbDefaultConfig;
    :goto_2d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 447
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e0

    move v5, v12

    goto :goto_2e1

    :cond_2e0
    move v5, v0

    .line 449
    .local v5, "_arg4":Z
    :goto_2e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lsamsung/uwb/IUwbCallback$Stub;->asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IUwbCallback;

    move-result-object v17

    .line 450
    .local v17, "_arg5":Lsamsung/uwb/IUwbCallback;
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lsamsung/uwb/IUwbAdapter$Stub;->openSession(IILsamsung/uwb/UwbDefaultConfig;Landroid/os/IBinder;ZLsamsung/uwb/IUwbCallback;)I

    move-result v0

    .line 451
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    return v12

    .line 425
    .end local v0    # "_result":I
    .end local v5    # "_arg4":Z
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Lsamsung/uwb/UwbDefaultConfig;
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v17    # "_arg5":Lsamsung/uwb/IUwbCallback;
    :pswitch_2fd
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate8()V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    return v12

    .line 418
    :pswitch_307
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate7()V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    return v12

    .line 411
    :pswitch_311
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate6()V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    return v12

    .line 404
    :pswitch_31b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate5()V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v12

    .line 397
    :pswitch_325
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate4()V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    return v12

    .line 390
    :pswitch_32f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate3()V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    return v12

    .line 383
    :pswitch_339
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate2()V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    return v12

    .line 376
    :pswitch_343
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate1()V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    return v12

    .line 368
    :pswitch_34d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getSessionCount()I

    move-result v0

    .line 370
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    return v12

    .line 358
    .end local v0    # "_result":I
    :pswitch_35b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lsamsung/uwb/IUwbAdapter$Stub;->getSessionState(I)I

    move-result v1

    .line 362
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return v12

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_36d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->isEnabled()Z

    move-result v0

    .line 352
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    return v12

    .line 343
    .end local v0    # "_result":Z
    :pswitch_37b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate22()V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    return v12

    .line 335
    :pswitch_385
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getDecentPreambleCode()I

    move-result v0

    .line 337
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    return v12

    .line 327
    .end local v0    # "_result":I
    :pswitch_393
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->getDecentChannelNumber()I

    move-result v0

    .line 329
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return v12

    .line 320
    .end local v0    # "_result":I
    :pswitch_3a1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->deprecate0()V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v12

    .line 312
    :pswitch_3ab
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->disable()I

    move-result v0

    .line 314
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    return v12

    .line 304
    .end local v0    # "_result":I
    :pswitch_3b9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lsamsung/uwb/IUwbAdapter$Stub;->enable()I

    move-result v0

    .line 306
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return v12

    .line 299
    .end local v0    # "_result":I
    :cond_3c7
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    return v12

    nop

    :pswitch_data_3cc
    .packed-switch 0x1
        :pswitch_3b9
        :pswitch_3ab
        :pswitch_3a1
        :pswitch_393
        :pswitch_385
        :pswitch_37b
        :pswitch_36d
        :pswitch_35b
        :pswitch_34d
        :pswitch_343
        :pswitch_339
        :pswitch_32f
        :pswitch_325
        :pswitch_31b
        :pswitch_311
        :pswitch_307
        :pswitch_2fd
        :pswitch_2b7
        :pswitch_2a5
        :pswitch_293
        :pswitch_281
        :pswitch_277
        :pswitch_261
        :pswitch_24f
        :pswitch_239
        :pswitch_22f
        :pswitch_225
        :pswitch_203
        :pswitch_1e4
        :pswitch_1c2
        :pswitch_1a3
        :pswitch_199
        :pswitch_18f
        :pswitch_185
        :pswitch_17b
        :pswitch_171
        :pswitch_167
        :pswitch_15d
        :pswitch_153
        :pswitch_149
        :pswitch_137
        :pswitch_129
        :pswitch_11b
        :pswitch_109
        :pswitch_ff
        :pswitch_f5
        :pswitch_cb
        :pswitch_b1
        :pswitch_9a
        :pswitch_80
        :pswitch_66
        :pswitch_58
        :pswitch_41
        :pswitch_27
        :pswitch_19
    .end packed-switch
.end method
