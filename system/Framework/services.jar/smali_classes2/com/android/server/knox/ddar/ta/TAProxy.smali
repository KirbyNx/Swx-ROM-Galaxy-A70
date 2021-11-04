.class public Lcom/android/server/knox/ddar/ta/TAProxy;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "TAProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;
    }
.end annotation


# static fields
.field public static final ALL_TAS:Ljava/lang/String; = "ALL_TAS"

.field public static final LOAD_TA:Ljava/lang/String; = "LOAD_TA"

.field public static final PROCESS_COMMAND:Ljava/lang/String; = "PROCESS_COMMAND"

.field public static final SETUP_TA:Ljava/lang/String; = "SETUP_TA"

.field public static final TAG:Ljava/lang/String; = "TAProxy"

.field public static final TA_CMD_DATA:Ljava/lang/String; = "TA_CMD_DATA"

.field public static final TA_CMD_ID:Ljava/lang/String; = "TA_CMD_ID"

.field public static final TA_ERROR_MSG:Ljava/lang/String; = "TA_ERROR_MSG"

.field public static final TA_FD:Ljava/lang/String; = "TA_FD"

.field public static final TA_FD_OFFSET:Ljava/lang/String; = "TA_FD_OFFSET"

.field public static final TA_FD_SIZE:Ljava/lang/String; = "TA_FD_SIZE"

.field public static final TA_ID:Ljava/lang/String; = "TA_ID"

.field public static final TA_MAGICNUM:Ljava/lang/String; = "TA_MAGICNUM"

.field public static final TA_PROCESS_NAME:Ljava/lang/String; = "TA_PROCESS_NAME"

.field public static final TA_RECV_RESP_SIZE:Ljava/lang/String; = "TA_RECV_RESP_SIZE"

.field public static final TA_RESPDATA:Ljava/lang/String; = "TA_RESPDATA"

.field public static final TA_RESP_CODE:Ljava/lang/String; = "TA_RESP_CODE"

.field public static final TA_ROOT_NAME:Ljava/lang/String; = "TA_ROOT_NAME"

.field public static final TA_SEND_CMD_SIZE:Ljava/lang/String; = "TA_SEND_CMD_SIZE"

.field public static final TA_TECHNOLOGY:Ljava/lang/String; = "TA_TECHNOLOGY"

.field public static final TA_VERSION:Ljava/lang/String; = "TA_VERSION"

.field public static final UNLOAD_TA:Ljava/lang/String; = "UNLOAD_TA"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;


# instance fields
.field private mTAMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string v2, "TAProxy() called updated"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    sput-object p1, Lcom/android/server/knox/ddar/ta/TAProxy;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private enforceCallingUser(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .line 245
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string v2, "enforceCallingUser"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 249
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_17

    .line 251
    return-void

    .line 253
    :cond_17
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_22

    .line 256
    return-void

    .line 254
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/ta/TAProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/ta/TAProxy;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

    if-nez v1, :cond_e

    .line 56
    new-instance v1, Lcom/android/server/knox/ddar/ta/TAProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/ta/TAProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;

    .line 58
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/ddar/ta/TAProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 54
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadTARequest(Landroid/os/Bundle;)Z
    .registers 15
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string/jumbo v2, "loadTARequest called"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    const-string v0, "TA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "taId":I
    const-string v1, "TA_FD"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 171
    .local v8, "taFD":Landroid/os/ParcelFileDescriptor;
    const-string v1, "TA_FD_OFFSET"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 172
    .local v9, "taFDOffset":J
    const-string v1, "TA_FD_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 174
    .local v11, "taSize":J
    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-wide v4, v9

    move-wide v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/knox/ddar/ta/TAProxy;->loadTA(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    return v1
.end method

.method private processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string/jumbo v2, "processCommandRequest called"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    const-string v0, "TA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "taId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v1, "out":Landroid/os/Bundle;
    new-instance v2, Lcom/android/server/knox/ddar/ta/TACommandRequest;

    invoke-direct {v2}, Lcom/android/server/knox/ddar/ta/TACommandRequest;-><init>()V

    .line 191
    .local v2, "request":Lcom/android/server/knox/ddar/ta/TACommandRequest;
    nop

    .line 192
    const-string v3, "TA_VERSION"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 193
    const-string v4, "TA_MAGICNUM"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 194
    const-string v5, "TA_CMD_ID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 195
    const-string v6, "TA_CMD_DATA"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 191
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/knox/ddar/ta/TACommandRequest;->init(I[BI[B)V

    .line 197
    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/ddar/ta/TAProxy;->processTACommand(ILcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;

    move-result-object v3

    .line 198
    .local v3, "response":Lcom/android/server/knox/ddar/ta/TACommandResponse;
    iget v4, v3, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponseCode:I

    const-string v5, "TA_RESP_CODE"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget-object v4, v3, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    const-string v5, "TA_ERROR_MSG"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v4, v3, Lcom/android/server/knox/ddar/ta/TACommandResponse;->mResponse:[B

    const-string v5, "TA_RESPDATA"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 202
    return-object v1
.end method

.method private setupTARequest(Landroid/os/Bundle;)Z
    .registers 19
    .param p1, "args"    # Landroid/os/Bundle;

    .line 144
    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TAProxy"

    const-string/jumbo v4, "setupTARequest called"

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    const-string v2, "ALL_TAS"

    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 146
    .local v2, "tasBundle":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_88

    .line 147
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 148
    .local v6, "taInfoBundle":Landroid/os/Bundle;
    const-string v7, "TA_ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 149
    .local v7, "taId":I
    iget-object v8, v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_85

    .line 150
    new-instance v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;-><init>(Lcom/android/server/knox/ddar/ta/TAProxy$1;)V

    .line 151
    .local v8, "taInfo":Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;
    iput v7, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    .line 152
    const-string v9, "TA_TECHNOLOGY"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    .line 153
    const-string v9, "TA_ROOT_NAME"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    .line 154
    const-string v9, "TA_PROCESS_NAME"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    .line 155
    const-string v9, "TA_SEND_CMD_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    .line 156
    const-string v9, "TA_RECV_RESP_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxRecvRespSize:I

    .line 157
    new-instance v9, Lcom/android/server/knox/ddar/ta/TZNative;

    iget v11, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    iget-object v12, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    iget v15, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    iget v10, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->maxRecvRespSize:I

    move/from16 v16, v10

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/server/knox/ddar/ta/TZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 159
    .local v9, "ta":Lcom/android/server/knox/ddar/ta/TZNative;
    iput-object v9, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    .line 160
    iget-object v10, v0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    iget v11, v8, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->taId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v6    # "taInfoBundle":Landroid/os/Bundle;
    .end local v7    # "taId":I
    .end local v8    # "taInfo":Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;
    .end local v9    # "ta":Lcom/android/server/knox/ddar/ta/TZNative;
    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 163
    .end local v5    # "i":I
    :cond_88
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "setupTARequest completed"

    invoke-static {v3, v5, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    const/4 v1, 0x1

    return v1
.end method

.method private unloadTARequest(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string/jumbo v2, "unloadTARequest called"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    const-string v0, "TA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "taId":I
    invoke-virtual {p0, v0}, Lcom/android/server/knox/ddar/ta/TAProxy;->unloadTA(I)V

    .line 181
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public loadTA(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .registers 16
    .param p1, "taId"    # I
    .param p2, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "offset"    # J
    .param p5, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TAProxy"

    const-string v3, "TAProxy::loadTA"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    const/4 v1, -0x1

    .line 216
    .local v1, "fdInt":I
    if-eqz p2, :cond_11

    .line 217
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    .line 220
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TA fd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    iget-object v0, v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    .line 225
    .local v0, "ta":Lcom/android/server/knox/ddar/ta/TZNative;
    move-object v3, v0

    move v4, v1

    move-wide v5, p3

    move-wide v7, p5

    :try_start_49
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/knox/ddar/ta/TZNative;->loadTA(IJJ)Z

    move-result v2
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_58

    .line 227
    if-eqz p2, :cond_57

    .line 229
    :try_start_4f
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 232
    goto :goto_57

    .line 230
    :catch_53
    move-exception v3

    .line 231
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    .end local v3    # "e":Ljava/io/IOException;
    :cond_57
    :goto_57
    return v2

    .line 227
    :catchall_58
    move-exception v2

    if-eqz p2, :cond_63

    .line 229
    :try_start_5b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 232
    goto :goto_63

    .line 230
    :catch_5f
    move-exception v3

    .line 231
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    :cond_63
    :goto_63
    throw v2
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/ta/TAProxy;->enforceCallingUser(I)V

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "res":Z
    :try_start_4
    const-string v1, "TAProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v1, "out":Landroid/os/Bundle;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_8c

    :cond_2e
    goto :goto_56

    :sswitch_2f
    const-string v3, "PROCESS_COMMAND"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v5

    goto :goto_57

    :sswitch_39
    const-string v3, "LOAD_TA"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v7

    goto :goto_57

    :sswitch_43
    const-string v3, "UNLOAD_TA"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v6

    goto :goto_57

    :sswitch_4d
    const-string v4, "SETUP_TA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_86

    if-eqz v4, :cond_2e

    goto :goto_57

    :goto_56
    move v3, v2

    :goto_57
    const-string v2, "dual_dar_response"

    if-eqz v3, :cond_7c

    if-eq v3, v7, :cond_73

    if-eq v3, v6, :cond_6a

    if-eq v3, v5, :cond_62

    goto :goto_85

    .line 128
    :cond_62
    :try_start_62
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 129
    .local v3, "resp":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_85

    .line 124
    .end local v3    # "resp":Landroid/os/Bundle;
    :cond_6a
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->unloadTARequest(Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 125
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    goto :goto_85

    .line 120
    :cond_73
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->loadTARequest(Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 121
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    goto :goto_85

    .line 116
    :cond_7c
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/ta/TAProxy;->setupTARequest(Landroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    .line 117
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_84} :catch_86

    .line 118
    nop

    .line 133
    :goto_85
    return-object v1

    .line 136
    .end local v1    # "out":Landroid/os/Bundle;
    :catch_86
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_8c
    .sparse-switch
        -0x7bc5cc71 -> :sswitch_4d
        0x203147ad -> :sswitch_43
        0x3edcc066 -> :sswitch_39
        0x632dfd3b -> :sswitch_2f
    .end sparse-switch
.end method

.method public processTACommand(ILcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;
    .registers 6
    .param p1, "taId"    # I
    .param p2, "request"    # Lcom/android/server/knox/ddar/ta/TACommandRequest;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAProxy::processTACommand: request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; request.mCommandId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/server/knox/ddar/ta/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; this.mTAId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TAProxy"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    iget-object v0, p0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    iget-object v0, v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    .line 210
    .local v0, "ta":Lcom/android/server/knox/ddar/ta/TZNative;
    invoke-virtual {v0, p2}, Lcom/android/server/knox/ddar/ta/TZNative;->processTACommand(Lcom/android/server/knox/ddar/ta/TACommandRequest;)Lcom/android/server/knox/ddar/ta/TACommandResponse;

    move-result-object v1

    return-object v1
.end method

.method public unloadTA(I)V
    .registers 5
    .param p1, "taId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string v2, "TAProxy::unloadTA"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/knox/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;

    iget-object v0, v0, Lcom/android/server/knox/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/ddar/ta/TZNative;

    .line 241
    .local v0, "ta":Lcom/android/server/knox/ddar/ta/TZNative;
    invoke-virtual {v0}, Lcom/android/server/knox/ddar/ta/TZNative;->unloadTA()V

    .line 242
    return-void
.end method
