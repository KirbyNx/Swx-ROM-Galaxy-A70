.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->init_GnssLocationPrivider_samsung()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 1080
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1083
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfo updated. cellInfo size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object/from16 v1, p1

    .line 1085
    .local v1, "mCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v3, 0x0

    .local v3, "type":I
    const/4 v4, 0x0

    .local v4, "mcc":I
    const/4 v5, 0x0

    .local v5, "mnc":I
    const/4 v6, 0x0

    .local v6, "lac":I
    const/4 v7, 0x0

    .local v7, "pscOrPci":I
    const/4 v8, 0x0

    .local v8, "arfcn":I
    const/4 v9, 0x0

    .line 1086
    .local v9, "cid":I
    const-wide/16 v10, 0x0

    .line 1087
    .local v10, "cidExtension":J
    iget-object v12, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v12}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v12

    .line 1089
    .local v12, "networkType":I
    if-eqz p1, :cond_1fc

    .line 1090
    const/4 v13, 0x3

    if-eq v12, v13, :cond_c7

    const/16 v14, 0x8

    if-eq v12, v14, :cond_c7

    const/16 v15, 0x9

    if-eq v12, v15, :cond_c7

    const/16 v15, 0xa

    if-eq v12, v15, :cond_c7

    const/16 v15, 0xf

    if-ne v12, v15, :cond_48

    goto/16 :goto_c7

    .line 1095
    :cond_48
    const/16 v15, 0xd

    if-ne v12, v15, :cond_4f

    .line 1096
    const/4 v3, 0x4

    goto/16 :goto_c8

    .line 1097
    :cond_4f
    const/16 v15, 0x14

    if-ne v12, v15, :cond_57

    .line 1098
    const/16 v3, 0x8

    goto/16 :goto_c8

    .line 1101
    :cond_57
    const/16 v15, 0x12

    if-ne v12, v15, :cond_b0

    .line 1102
    iget-object v15, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # getter for: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v15}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v15

    .line 1103
    .local v15, "voiceNetworkType":I
    if-eq v15, v13, :cond_99

    if-eq v15, v14, :cond_99

    const/16 v13, 0x9

    if-eq v15, v13, :cond_99

    const/16 v13, 0xa

    if-eq v15, v13, :cond_99

    const/16 v13, 0xf

    if-ne v15, v13, :cond_76

    goto :goto_99

    .line 1110
    :cond_76
    const/16 v13, 0xd

    if-ne v15, v13, :cond_82

    .line 1111
    const/4 v3, 0x4

    .line 1112
    const-string/jumbo v13, "networkType = IWLAN, VoiceNetworkType = LTE"

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1114
    :cond_82
    const/4 v3, 0x1

    .line 1115
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType = IWLAN, VoiceNetworkType is not LTE & HSDPA, type =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1108
    :cond_99
    :goto_99
    const/4 v3, 0x2

    .line 1109
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType = IWLAN, VoiceNetworkType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    .end local v15    # "voiceNetworkType":I
    :goto_af
    goto :goto_c8

    .line 1120
    :cond_b0
    const/4 v3, 0x1

    .line 1121
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType is not IWLAN and type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 1094
    :cond_c7
    :goto_c7
    const/4 v3, 0x2

    .line 1125
    :goto_c8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_cc
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1fb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroid/telephony/CellInfo;

    .line 1126
    .local v15, "cInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v15}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v14

    if-eqz v14, :cond_1f7

    .line 1127
    const-string/jumbo v14, "registered cell found"

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v15}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1f4

    invoke-virtual {v15}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1f4

    .line 1129
    invoke-virtual {v15}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1130
    invoke-virtual {v15}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1132
    instance-of v13, v15, Landroid/telephony/CellInfoGsm;

    if-eqz v13, :cond_12a

    .line 1133
    move-object v13, v15

    check-cast v13, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v13}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v13

    .line 1134
    .local v13, "cellId":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v13}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    .line 1135
    invoke-virtual {v13}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v9

    .line 1136
    int-to-long v10, v9

    .line 1137
    invoke-virtual {v13}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v7

    .line 1138
    .end local v13    # "cellId":Landroid/telephony/CellIdentityGsm;
    goto :goto_19a

    :cond_12a
    instance-of v13, v15, Landroid/telephony/CellInfoWcdma;

    if-eqz v13, :cond_143

    .line 1139
    move-object v13, v15

    check-cast v13, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v13}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v13

    .line 1140
    .local v13, "cellId":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v13}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v6

    .line 1141
    invoke-virtual {v13}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v9

    .line 1142
    int-to-long v10, v9

    .line 1143
    invoke-virtual {v13}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v7

    .line 1144
    .end local v13    # "cellId":Landroid/telephony/CellIdentityWcdma;
    goto :goto_19a

    :cond_143
    instance-of v13, v15, Landroid/telephony/CellInfoLte;

    if-eqz v13, :cond_15c

    .line 1145
    move-object v13, v15

    check-cast v13, Landroid/telephony/CellInfoLte;

    invoke-virtual {v13}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v13

    .line 1146
    .local v13, "cellId":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v13}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    .line 1147
    invoke-virtual {v13}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v9

    .line 1148
    int-to-long v10, v9

    .line 1149
    invoke-virtual {v13}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v7

    .line 1150
    .end local v13    # "cellId":Landroid/telephony/CellIdentityLte;
    goto :goto_19a

    :cond_15c
    instance-of v13, v15, Landroid/telephony/CellInfoNr;

    if-eqz v13, :cond_184

    .line 1151
    move-object v13, v15

    check-cast v13, Landroid/telephony/CellInfoNr;

    invoke-virtual {v13}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v13

    .line 1152
    .local v13, "cellId":Landroid/telephony/CellIdentity;
    move-object v14, v13

    check-cast v14, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v14}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v6

    .line 1153
    move-object v14, v13

    check-cast v14, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v14}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v10

    .line 1154
    move-object v14, v13

    check-cast v14, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v14}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v7

    .line 1155
    move-object v14, v13

    check-cast v14, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v14}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v8

    .end local v13    # "cellId":Landroid/telephony/CellIdentity;
    goto :goto_199

    .line 1156
    :cond_184
    instance-of v13, v15, Landroid/telephony/CellInfoCdma;

    if-eqz v13, :cond_199

    .line 1157
    move-object v13, v15

    check-cast v13, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v13}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v13

    .line 1158
    .local v13, "cellId":Landroid/telephony/CellIdentityCdma;
    invoke-virtual {v13}, Landroid/telephony/CellIdentityCdma;->getTac()I

    move-result v6

    .line 1159
    invoke-virtual {v13}, Landroid/telephony/CellIdentityCdma;->getCi()I

    move-result v9

    .line 1160
    int-to-long v10, v9

    goto :goto_19a

    .line 1156
    .end local v13    # "cellId":Landroid/telephony/CellIdentityCdma;
    :cond_199
    :goto_199
    nop

    .line 1163
    :goto_19a
    const/high16 v13, 0x40000000    # 2.0f

    iget-object v14, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_get_seh_gnss_hal_version()F
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3500(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v16, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v13, v13, v16

    if-gez v13, :cond_1c8

    .line 1164
    const-string v13, "SehGnss Hal version 2.0"

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v13, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    move v14, v3

    move-object/from16 v22, v15

    .end local v15    # "cInfo":Landroid/telephony/CellInfo;
    .local v22, "cInfo":Landroid/telephony/CellInfo;
    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_agps_set_ref_location_cellid(IIIIII)V

    goto :goto_1fb

    .line 1166
    .end local v22    # "cInfo":Landroid/telephony/CellInfo;
    .restart local v15    # "cInfo":Landroid/telephony/CellInfo;
    :cond_1c8
    move-object/from16 v22, v15

    .end local v15    # "cInfo":Landroid/telephony/CellInfo;
    .restart local v22    # "cInfo":Landroid/telephony/CellInfo;
    const v13, 0x40066666    # 2.1f

    iget-object v14, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_get_seh_gnss_hal_version()F
    invoke-static {v14}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3500(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    cmpg-double v13, v13, v16

    if-gez v13, :cond_1fb

    .line 1167
    const-string v13, "SehGnss Hal version 2.1"

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v13, v0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$3;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide/from16 v18, v10

    move/from16 v20, v7

    move/from16 v21, v8

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->native_agps_set_ref_location_cellid(IIIIJII)V
    invoke-static/range {v13 .. v21}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$3600(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IIIIJII)V

    goto :goto_1fb

    .line 1128
    .end local v22    # "cInfo":Landroid/telephony/CellInfo;
    .restart local v15    # "cInfo":Landroid/telephony/CellInfo;
    :cond_1f4
    move-object/from16 v22, v15

    .end local v15    # "cInfo":Landroid/telephony/CellInfo;
    .restart local v22    # "cInfo":Landroid/telephony/CellInfo;
    goto :goto_1f9

    .line 1126
    .end local v22    # "cInfo":Landroid/telephony/CellInfo;
    .restart local v15    # "cInfo":Landroid/telephony/CellInfo;
    :cond_1f7
    move-object/from16 v22, v15

    .line 1173
    .end local v15    # "cInfo":Landroid/telephony/CellInfo;
    :goto_1f9
    goto/16 :goto_cc

    :cond_1fb
    :goto_1fb
    goto :goto_201

    .line 1175
    :cond_1fc
    const-string v13, "Error response to requestCellInfoUpdate."

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :goto_201
    return-void
.end method
