.class public Lcom/android/server/enterprise/nap/DataDeliveryHelper;
.super Ljava/lang/Object;
.source "DataDeliveryHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:DataDeliveryHelper"


# instance fields
.field private identifier:Ljava/lang/String;

.field private operationUserId:I

.field private profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field private serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V
    .registers 5
    .param p1, "profile"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .param p2, "serviceConnection"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .param p3, "operationUserId"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 48
    iput-object p2, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 49
    iput p3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    .line 50
    if-eqz p1, :cond_15

    .line 51
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    .line 52
    :cond_15
    return-void
.end method

.method private blockDnsFlow(Lorg/json/JSONObject;II)I
    .registers 8
    .param p1, "rawJson"    # Lorg/json/JSONObject;
    .param p2, "operationUserId"    # I
    .param p3, "userId"    # I

    .line 302
    const/4 v0, 0x1

    .line 304
    .local v0, "dropFlow":I
    :try_start_1
    const-string v1, "dport"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "dport":Ljava/lang/String;
    const-string v3, "53"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 306
    const-string v3, "dnsuid"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 307
    .local v2, "dns_originator_uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_2e

    .line 308
    .local v3, "dns_originator_userId":I
    if-nez p3, :cond_26

    if-nez p2, :cond_26

    if-eqz v3, :cond_26

    .line 309
    const/4 v0, 0x3

    goto :goto_2b

    .line 310
    :cond_26
    if-eq v3, p2, :cond_2a

    .line 311
    const/4 v0, 0x2

    goto :goto_2b

    .line 313
    :cond_2a
    const/4 v0, 0x0

    .line 315
    .end local v2    # "dns_originator_uid":I
    .end local v3    # "dns_originator_userId":I
    :goto_2b
    goto :goto_2f

    .line 316
    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    .line 318
    .end local v1    # "dport":Ljava/lang/String;
    :catch_2e
    move-exception v1

    :goto_2f
    nop

    .line 319
    return v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationUserId()I
    .registers 2

    .line 285
    iget v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    return v0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object v0
.end method

.method public getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz v0, :cond_9

    .line 269
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    return-object v0

    .line 270
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-object v0
.end method

.method public processData(Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p1, "rawData"    # Ljava/lang/String;

    .line 55
    move-object/from16 v1, p0

    const-string v2, "brecv"

    const-string v3, "end"

    const-string/jumbo v4, "start"

    const-string v5, "bsent"

    const-string/jumbo v0, "protocol"

    const-string/jumbo v6, "sport"

    const-string v7, "dst"

    const-string/jumbo v8, "src"

    const-string/jumbo v9, "recordtype"

    const-string v10, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v11, "parentprochash"

    const-string/jumbo v12, "prochash"

    const-string/jumbo v13, "procname"

    const-string v14, "dnsuid"

    const-string/jumbo v15, "uid"

    const/16 v16, 0x0

    .line 57
    .local v16, "returnValue":Ljava/lang/String;
    move-object/from16 v17, v10

    :try_start_2d
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v18, v14

    move-object/from16 v14, p1

    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v10, "rawJson":Lorg/json/JSONObject;
    nop

    .line 63
    iget-object v14, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlags()I

    move-result v14

    .line 64
    .local v14, "flags":I
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v20, v19

    .line 65
    .local v20, "resultJson":Lorg/json/JSONObject;
    const/16 v19, 0x0

    .line 67
    .local v19, "kernelObject":Ljava/lang/String;
    move-object/from16 v21, v2

    const/4 v2, 0x0

    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_4d} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4d} :catch_298

    move-object/from16 v19, v22

    .line 69
    if-eqz v19, :cond_90

    .line 70
    :try_start_51
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move/from16 v23, v22

    .line 71
    .local v23, "userId":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 72
    .local v22, "uid_1":I
    if-nez v22, :cond_7f

    .line 73
    iget v2, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    move-object/from16 v24, v3

    move/from16 v3, v23

    .end local v23    # "userId":I
    .local v3, "userId":I
    invoke-direct {v1, v10, v2, v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v2

    .line 74
    .local v2, "isDnsFlow":I
    if-lez v2, :cond_7b

    .line 75
    move-object/from16 v23, v4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_74

    .line 76
    const/4 v4, 0x0

    return-object v4

    .line 78
    :cond_74
    const/4 v4, 0x0

    iget v4, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eq v3, v4, :cond_7d

    .line 79
    const/4 v4, 0x0

    return-object v4

    .line 74
    :cond_7b
    move-object/from16 v23, v4

    .line 82
    .end local v2    # "isDnsFlow":I
    :cond_7d
    const/4 v2, 0x0

    goto :goto_94

    .line 83
    .end local v3    # "userId":I
    .restart local v23    # "userId":I
    :cond_7f
    move-object/from16 v24, v3

    move/from16 v3, v23

    move-object/from16 v23, v4

    .end local v23    # "userId":I
    .restart local v3    # "userId":I
    iget v2, v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_87} :catch_8d
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_87} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_87} :catch_298

    if-eq v3, v2, :cond_8b

    .line 84
    const/4 v2, 0x0

    return-object v2

    .line 83
    :cond_8b
    const/4 v2, 0x0

    goto :goto_94

    .line 88
    .end local v3    # "userId":I
    .end local v22    # "uid_1":I
    :catch_8d
    move-exception v0

    .line 89
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    return-object v2

    .line 69
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_90
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    .line 90
    :goto_94
    nop

    .line 92
    :try_start_95
    invoke-virtual {v10, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 93
    .end local v19    # "kernelObject":Ljava/lang/String;
    .local v2, "kernelObject":Ljava/lang/String;
    move-object/from16 v3, v20

    .end local v20    # "resultJson":Lorg/json/JSONObject;
    .local v3, "resultJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const v4, 0x8000

    and-int/2addr v4, v14

    if-nez v4, :cond_a7

    if-nez v14, :cond_b0

    .line 96
    :cond_a7
    const/4 v4, 0x0

    invoke-virtual {v10, v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 97
    invoke-virtual {v3, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_b0} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b0} :catch_298

    .line 100
    :cond_b0
    and-int/lit16 v4, v14, 0x100

    const-string/jumbo v9, "pid"

    if-nez v4, :cond_b9

    if-nez v14, :cond_c3

    .line 101
    :cond_b9
    const/4 v4, 0x0

    :try_start_ba
    invoke-virtual {v10, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v2, v19

    .line 102
    invoke-virtual {v3, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_c3} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c3} :catch_298

    .line 105
    :cond_c3
    and-int/lit16 v4, v14, 0x1000

    const-string/jumbo v1, "puid"

    if-nez v4, :cond_cc

    if-nez v14, :cond_d6

    .line 106
    :cond_cc
    const/4 v4, 0x0

    :try_start_cd
    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v2, v19

    .line 107
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_d6
    and-int/lit16 v4, v14, 0x2000

    if-nez v4, :cond_dc

    if-nez v14, :cond_e6

    .line 111
    :cond_dc
    const/4 v4, 0x0

    invoke-virtual {v10, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v2, v19

    .line 112
    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_e6
    and-int/lit8 v4, v14, 0x8

    if-nez v4, :cond_ec

    if-nez v14, :cond_f5

    .line 116
    :cond_ec
    const/4 v4, 0x0

    invoke-virtual {v10, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 117
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_f5
    and-int/lit16 v4, v14, 0x4000

    if-nez v4, :cond_fb

    if-nez v14, :cond_104

    .line 121
    :cond_fb
    const/4 v4, 0x0

    invoke-virtual {v10, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 122
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_cd .. :try_end_104} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_104} :catch_298

    .line 125
    :cond_104
    and-int/lit8 v4, v14, 0x10

    const-string v6, "dport"

    if-nez v4, :cond_10c

    if-nez v14, :cond_115

    .line 126
    :cond_10c
    const/4 v4, 0x0

    :try_start_10d
    invoke-virtual {v10, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 127
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_115
    and-int/lit16 v4, v14, 0x800

    if-nez v4, :cond_11b

    if-nez v14, :cond_124

    .line 131
    :cond_11b
    const/4 v4, 0x0

    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 132
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_124
    .catch Lorg/json/JSONException; {:try_start_10d .. :try_end_124} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_124} :catch_298

    .line 137
    :cond_124
    const/4 v4, 0x0

    :try_start_125
    invoke-virtual {v10, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_129} :catch_295
    .catch Lorg/json/JSONException; {:try_start_125 .. :try_end_129} :catch_2a4

    move-object v2, v0

    .line 138
    if-eqz v2, :cond_293

    :try_start_12c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_134

    goto/16 :goto_293

    .line 140
    :cond_134
    and-int/lit16 v0, v14, 0x400

    if-nez v0, :cond_13a

    if-nez v14, :cond_13d

    .line 141
    :cond_13a
    invoke-virtual {v3, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_13d} :catch_290
    .catch Lorg/json/JSONException; {:try_start_12c .. :try_end_13d} :catch_2a4

    .line 145
    :cond_13d
    nop

    .line 148
    and-int/lit16 v0, v14, 0x200

    const-string v4, "0"

    if-nez v0, :cond_146

    if-nez v14, :cond_17d

    .line 149
    :cond_146
    const/4 v7, 0x0

    :try_start_147
    invoke-virtual {v10, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {v10, v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "processName":Ljava/lang/String;
    invoke-virtual {v10, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 152
    .local v7, "pid":Ljava/lang/String;
    if-eqz v0, :cond_17d

    if-eqz v8, :cond_17d

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_179

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16d

    goto :goto_179

    .line 156
    :cond_16d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "packageHash":Ljava/lang/String;
    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_17d

    .line 154
    .end local v9    # "packageHash":Ljava/lang/String;
    :cond_179
    :goto_179
    const/4 v9, 0x0

    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_17d} :catch_17e
    .catch Lorg/json/JSONException; {:try_start_147 .. :try_end_17d} :catch_2a4

    .line 163
    .end local v0    # "uid":Ljava/lang/String;
    .end local v7    # "pid":Ljava/lang/String;
    .end local v8    # "processName":Ljava/lang/String;
    :cond_17d
    :goto_17d
    goto :goto_183

    .line 161
    :catch_17e
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    :try_start_180
    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_183
    .catch Lorg/json/JSONException; {:try_start_180 .. :try_end_183} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_183} :catch_298

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_183
    and-int/lit16 v0, v14, 0x80

    const-string/jumbo v7, "parentprocname"

    if-nez v0, :cond_18c

    if-nez v14, :cond_195

    .line 166
    :cond_18c
    const/4 v8, 0x0

    :try_start_18d
    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 167
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_195
    .catch Lorg/json/JSONException; {:try_start_18d .. :try_end_195} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_195} :catch_298

    .line 171
    :cond_195
    const/high16 v0, 0x40000

    and-int/2addr v0, v14

    const-string/jumbo v8, "ppid"

    if-nez v0, :cond_19f

    if-nez v14, :cond_1d5

    .line 172
    :cond_19f
    const/4 v9, 0x0

    :try_start_1a0
    invoke-virtual {v10, v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "puid":Ljava/lang/String;
    invoke-virtual {v10, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "parentProcessName":Ljava/lang/String;
    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "ppid":Ljava/lang/String;
    if-eqz v0, :cond_1d5

    if-eqz v1, :cond_1d5

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c5

    goto :goto_1d1

    .line 179
    :cond_1c5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "packageHash":Ljava/lang/String;
    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d5

    .line 177
    .end local v4    # "packageHash":Ljava/lang/String;
    :cond_1d1
    :goto_1d1
    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1d5} :catch_1d6
    .catch Lorg/json/JSONException; {:try_start_1a0 .. :try_end_1d5} :catch_2a4

    .line 186
    .end local v0    # "puid":Ljava/lang/String;
    .end local v1    # "parentProcessName":Ljava/lang/String;
    .end local v7    # "ppid":Ljava/lang/String;
    :cond_1d5
    :goto_1d5
    goto :goto_1db

    .line 184
    :catch_1d6
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_1d8
    invoke-virtual {v3, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1db
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_1e1

    if-nez v14, :cond_1ea

    .line 189
    :cond_1e1
    const/4 v1, 0x0

    invoke-virtual {v10, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 190
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_1ea
    and-int/lit8 v0, v14, 0x40

    if-nez v0, :cond_1f0

    if-nez v14, :cond_1fb

    .line 194
    :cond_1f0
    move-object/from16 v1, v23

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 195
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_1fb
    and-int/lit8 v0, v14, 0x4

    if-nez v0, :cond_201

    if-nez v14, :cond_20c

    .line 199
    :cond_201
    move-object/from16 v1, v24

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 200
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_20c
    and-int/lit8 v0, v14, 0x1

    if-nez v0, :cond_212

    if-nez v14, :cond_21d

    .line 204
    :cond_212
    move-object/from16 v1, v21

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 205
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_21d
    and-int/lit8 v0, v14, 0x20

    if-nez v0, :cond_223

    if-nez v14, :cond_232

    .line 209
    :cond_223
    const-string/jumbo v0, "hostname"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 210
    const-string/jumbo v0, "hostname"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_232
    .catch Lorg/json/JSONException; {:try_start_1d8 .. :try_end_232} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_232} :catch_298

    .line 214
    :cond_232
    const/high16 v0, 0x10000

    and-int/2addr v0, v14

    if-nez v0, :cond_239

    if-nez v14, :cond_25d

    .line 215
    :cond_239
    const/4 v1, 0x0

    :try_start_23a
    invoke-virtual {v10, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "destinationPort":Ljava/lang/String;
    if-eqz v0, :cond_25d

    .line 217
    const-string v1, "53"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_246} :catch_25e
    .catch Lorg/json/JSONException; {:try_start_23a .. :try_end_246} :catch_2a4

    if-eqz v1, :cond_254

    .line 218
    move-object/from16 v1, v18

    const/4 v4, 0x0

    :try_start_24b
    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 219
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_25d

    .line 221
    :cond_254
    move-object/from16 v1, v18

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25a
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_25a} :catch_25b
    .catch Lorg/json/JSONException; {:try_start_24b .. :try_end_25a} :catch_2a4

    goto :goto_25d

    .line 225
    .end local v0    # "destinationPort":Ljava/lang/String;
    :catch_25b
    move-exception v0

    goto :goto_261

    .line 227
    :cond_25d
    :goto_25d
    goto :goto_265

    .line 225
    :catch_25e
    move-exception v0

    move-object/from16 v1, v18

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :goto_261
    const/4 v4, 0x0

    :try_start_262
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_265
    const/high16 v0, 0x20000

    and-int/2addr v0, v14

    if-nez v0, :cond_26c

    if-nez v14, :cond_275

    .line 230
    :cond_26c
    const/4 v1, 0x0

    invoke-virtual {v10, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 231
    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_275
    const/high16 v0, 0x80000

    and-int/2addr v0, v14

    if-nez v0, :cond_27c

    if-nez v14, :cond_28b

    .line 235
    :cond_27c
    const-string/jumbo v0, "iface"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 236
    const-string/jumbo v0, "iface"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_28b
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28f
    .catch Lorg/json/JSONException; {:try_start_262 .. :try_end_28f} :catch_2a4
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_28f} :catch_298

    .end local v2    # "kernelObject":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v10    # "rawJson":Lorg/json/JSONObject;
    .end local v14    # "flags":I
    .end local v16    # "returnValue":Ljava/lang/String;
    .local v0, "returnValue":Ljava/lang/String;
    goto :goto_2ae

    .line 143
    .end local v0    # "returnValue":Ljava/lang/String;
    .restart local v2    # "kernelObject":Ljava/lang/String;
    .restart local v3    # "resultJson":Lorg/json/JSONObject;
    .restart local v10    # "rawJson":Lorg/json/JSONObject;
    .restart local v14    # "flags":I
    .restart local v16    # "returnValue":Ljava/lang/String;
    :catch_290
    move-exception v0

    const/4 v1, 0x0

    goto :goto_297

    .line 139
    :cond_293
    :goto_293
    const/4 v1, 0x0

    return-object v1

    .line 143
    :catch_295
    move-exception v0

    move-object v1, v4

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :goto_297
    return-object v1

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "kernelObject":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v10    # "rawJson":Lorg/json/JSONObject;
    .end local v14    # "flags":I
    :catch_298
    move-exception v0

    .line 244
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "processData: Exception"

    move-object/from16 v2, v17

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v1, 0x0

    move-object v0, v1

    .end local v16    # "returnValue":Ljava/lang/String;
    .local v1, "returnValue":Ljava/lang/String;
    goto :goto_2af

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "returnValue":Ljava/lang/String;
    .restart local v16    # "returnValue":Ljava/lang/String;
    :catch_2a4
    move-exception v0

    move-object/from16 v2, v17

    .line 241
    .local v0, "je":Lorg/json/JSONException;
    const-string/jumbo v1, "processData: JSONException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 v0, 0x0

    .line 246
    .end local v16    # "returnValue":Ljava/lang/String;
    .local v0, "returnValue":Ljava/lang/String;
    :goto_2ae
    nop

    .line 247
    :goto_2af
    return-object v0
.end method

.method public setServiceConnection(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)V
    .registers 2
    .param p1, "serviceConnection"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 278
    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 279
    return-void
.end method
