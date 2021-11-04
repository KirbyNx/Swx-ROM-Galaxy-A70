.class public Lcom/android/server/knox/ddar/DDCache;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DDCache.java"


# static fields
.field private static final DELETE_DATA_CMD:Ljava/lang/String; = "DELETE_DATA_CMD"

.field private static final DUAL_DAR_KEY:Ljava/lang/String; = "DUAL_DAR_KEY"

.field private static final DUAL_DAR_USER_ID:Ljava/lang/String; = "DUAL_DAR_USER_ID"

.field private static final DUAL_DAR_VALUE:Ljava/lang/String; = "DUAL_DAR_VALUE"

.field private static final GET_DATA_CMD:Ljava/lang/String; = "GET_DATA_CMD"

.field private static final SET_DATA_CMD:Ljava/lang/String; = "SET_DATA_CMD"

.field private static final TAG:Ljava/lang/String; = "DDCache"

.field private static volatile _instance:Lcom/android/server/knox/ddar/DDCache;


# instance fields
.field private context:Landroid/content/Context;

.field private semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->context:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/android/server/knox/ddar/DDCache;->context:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DUALDAR_User_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDCache;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/DDCache;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;

    if-nez v1, :cond_e

    .line 58
    new-instance v1, Lcom/android/server/knox/ddar/DDCache;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;

    .line 60
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 56
    .end local p0    # "c":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_16

    .line 70
    :try_start_4
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    .line 73
    goto :goto_16

    .line 71
    :catch_12
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method


# virtual methods
.method public get(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "value":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/ddar/DDCache;->constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    .line 94
    goto :goto_1d

    .line 91
    :catch_f
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DDCache"

    const-string v4, "get value failed"

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1d
    return-object v0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .param p1, "callingUid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 105
    .local v4, "res":Z
    const/4 v5, -0x1

    .line 106
    .local v5, "dualDarUserId":I
    const/4 v6, 0x0

    .line 107
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 109
    .local v7, "value":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_b
    const-string v0, "DDCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onMessage() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v11}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "out":Landroid/os/Bundle;
    const/4 v9, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0xd9160e7

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v11, v12, :cond_54

    const v12, 0xac391ee

    if-eq v11, v12, :cond_4a

    const v12, 0x67175262

    if-eq v11, v12, :cond_41

    :cond_40
    goto :goto_5e

    :cond_41
    const-string v11, "SET_DATA_CMD"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_5f

    :cond_4a
    const-string v10, "GET_DATA_CMD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    move v10, v14

    goto :goto_5f

    :cond_54
    const-string v10, "DELETE_DATA_CMD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5a} :catch_af

    if-eqz v10, :cond_40

    move v10, v13

    goto :goto_5f

    :goto_5e
    move v10, v9

    :goto_5f
    const-string v9, "DUAL_DAR_VALUE"

    const-string v11, "dual_dar_response"

    const-string v12, "DUAL_DAR_KEY"

    const-string v15, "DUAL_DAR_USER_ID"

    if-eqz v10, :cond_97

    if-eq v10, v14, :cond_80

    if-eq v10, v13, :cond_6e

    goto :goto_ae

    .line 129
    :cond_6e
    :try_start_6e
    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move v5, v9

    .line 130
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 131
    invoke-virtual {v1, v5, v6, v8}, Lcom/android/server/knox/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v4, 0x1

    .line 133
    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_ae

    .line 121
    :cond_80
    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    .line 122
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 123
    invoke-virtual {v1, v5, v6}, Lcom/android/server/knox/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    goto :goto_ae

    .line 113
    :cond_97
    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    .line 114
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 115
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 116
    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/knox/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v4, 0x1

    .line 118
    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_ad} :catch_af

    .line 119
    nop

    .line 137
    :goto_ae
    return-object v0

    .line 138
    .end local v0    # "out":Landroid/os/Bundle;
    :catch_af
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v8
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/ddar/DDCache;->constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 84
    goto :goto_1b

    .line 81
    :catch_c
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DDCache"

    const-string/jumbo v3, "set value failed"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method
