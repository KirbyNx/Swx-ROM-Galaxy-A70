.class public Lcom/android/server/McpsService;
.super Lcom/android/server/SystemService;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/McpsService$LocalService;,
        Lcom/android/server/McpsService$McpsDBHelper;
    }
.end annotation


# static fields
.field public static final HEX_PREFIX:Ljava/lang/String; = "0x"

.field private static final SERVICE:Ljava/lang/String; = "mcps"

.field private static final TAG:Ljava/lang/String; = "MCPS-Service"

.field private static final mAVersion:Ljava/lang/String; = "0.1.4.0v"

.field private static mKVersion:Ljava/lang/String;


# instance fields
.field private final DRIVER_MCPS_STAT_DIST:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_DROP:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_ENQ:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_FLOW:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_IGN:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_PROC:Ljava/lang/String;

.field private final DRIVER_MCPS_STAT_TFLO:Ljava/lang/String;

.field private final DRIVER_STATS_PATH:Ljava/lang/String;

.field private mAdbPolicy:Lcom/android/server/MCPSPolicy;

.field private mBasePolicy:Lcom/android/server/MCPSPolicy;

.field private mHelper:Lcom/android/server/McpsService$McpsDBHelper;

.field private mInitToggle:Z

.field private final mKeyMcpsModules:Ljava/lang/Object;

.field private final mKeyPolicy:Ljava/lang/Object;

.field private mMdm:Lcom/android/server/McpsDumpManager;

.field private mMobileCmListener:Lcom/android/server/ConnectivityListener;

.field private final mRemoteService:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/android/server/McpsService;->mKVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/server/McpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/McpsService$1;-><init>(Lcom/android/server/McpsService;)V

    iput-object v0, p0, Lcom/android/server/McpsService;->mRemoteService:Landroid/os/Binder;

    .line 164
    const-string v0, "/sys/module/mcps/parameters/"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_STATS_PATH:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "mcps_stat_distributed"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_DIST:Ljava/lang/String;

    .line 166
    const-string/jumbo v0, "mcps_stat_dropped"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_DROP:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "mcps_stat_enqueued"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_ENQ:Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "mcps_stat_ignored"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_IGN:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "mcps_stat_processed"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_PROC:Ljava/lang/String;

    .line 170
    const-string/jumbo v0, "mcps_stat_sauron_flow"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_FLOW:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "mcps_stat_sauron_target_flow"

    iput-object v0, p0, Lcom/android/server/McpsService;->DRIVER_MCPS_STAT_TFLO:Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    .line 457
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    .line 462
    invoke-static {v0}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    .line 467
    new-instance v0, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v0}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/McpsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/McpsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/McpsService;)Lcom/android/server/McpsDumpManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/McpsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/McpsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/McpsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/McpsService;->isMCPSServiceInitializedLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/McpsService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/McpsService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/McpsService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/McpsService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/McpsService;->doCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/McpsService;Lcom/android/server/McpsService$McpsDBHelper;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/McpsService;
    .param p1, "x1"    # Lcom/android/server/McpsService$McpsDBHelper;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/McpsService;->updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/McpsService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/McpsService;
    .param p1, "x1"    # Z

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/McpsService;->updateBasePolicy(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/McpsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/McpsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/McpsService;->updateInterfaceAddress()V

    return-void
.end method

.method public static dec2hex(I)Ljava/lang/String;
    .registers 4
    .param p0, "dec"    # I

    .line 305
    if-gez p0, :cond_c

    .line 306
    const-string v0, "MCPS-Service"

    const-string v1, "dec2hex : fail < 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "0"

    return-object v0

    .line 309
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dec2hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "v"    # Ljava/lang/String;

    .line 300
    invoke-static {p0}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "dec":I
    invoke-static {v0}, Lcom/android/server/McpsService;->dec2hex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)I
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 198
    .local v3, "policy":Lcom/android/server/MCPSPolicy;
    new-instance v4, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v4}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    .line 199
    .local v4, "builder":Lcom/android/server/MCPSPolicy$Builder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    array-length v6, v2

    const/4 v7, 0x0

    if-ge v5, v6, :cond_f9

    .line 200
    aget-object v6, v2, v5

    const-string v8, "-a"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 201
    invoke-direct/range {p0 .. p2}, Lcom/android/server/McpsService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 202
    return v7

    .line 205
    :cond_1f
    aget-object v6, v2, v5

    const-string/jumbo v8, "reset"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_30

    .line 206
    const/4 v6, 0x0

    invoke-direct {v0, v6, v8}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    .line 207
    return v7

    .line 208
    :cond_30
    aget-object v6, v2, v5

    const-string v9, "enable"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 209
    const-string/jumbo v6, "mcps_enable"

    invoke-virtual {v4, v6, v8}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    .line 210
    invoke-virtual {v4}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v6

    invoke-direct {v0, v6, v7}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    .line 211
    return v7

    .line 212
    :cond_48
    aget-object v6, v2, v5

    const-string v9, "disable"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 213
    invoke-static {v7}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v6

    invoke-direct {v0, v6, v7}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    .line 214
    return v7

    .line 215
    :cond_5a
    aget-object v6, v2, v5

    const-string/jumbo v9, "help"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 216
    invoke-direct {v0, v1}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    .line 217
    return v7

    .line 221
    :cond_69
    array-length v6, v2

    add-int/lit8 v9, v5, 0x1

    if-gt v6, v9, :cond_72

    .line 223
    invoke-direct {v0, v1}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    .line 224
    return v7

    .line 227
    :cond_72
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v5, v2, v5

    .line 228
    .local v5, "key":Ljava/lang/String;
    aget-object v9, v2, v6

    .line 229
    .local v9, "vstr":Ljava/lang/String;
    const/4 v10, 0x0

    .line 232
    .local v10, "isStringArgSkipped":Z
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x5e0

    const/4 v13, -0x1

    if-eq v11, v12, :cond_83

    :cond_82
    goto :goto_8d

    :cond_83
    const-string v11, "-m"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    move v11, v7

    goto :goto_8e

    :goto_8d
    move v11, v13

    :goto_8e
    if-eqz v11, :cond_92

    .line 237
    const/4 v10, 0x1

    goto :goto_99

    .line 234
    :cond_92
    const-string/jumbo v11, "rmnet%d"

    invoke-virtual {v4, v11, v9}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    .line 235
    nop

    .line 241
    :goto_99
    if-nez v10, :cond_9c

    .line 242
    goto :goto_f5

    .line 246
    :cond_9c
    invoke-static {v9}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 247
    .local v11, "vint":I
    if-gez v11, :cond_a6

    .line 248
    invoke-direct {v0, v1}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    .line 249
    return v7

    .line 253
    :cond_a6
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v14, 0x5df

    const/4 v15, 0x2

    if-eq v12, v14, :cond_cd

    const/16 v14, 0x5e1

    if-eq v12, v14, :cond_c3

    const v14, 0x2ad5b50

    if-eq v12, v14, :cond_b9

    :cond_b8
    goto :goto_d6

    :cond_b9
    const-string v12, "-mode"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b8

    move v13, v8

    goto :goto_d6

    :cond_c3
    const-string v12, "-n"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b8

    move v13, v7

    goto :goto_d6

    :cond_cd
    const-string v12, "-l"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b8

    move v13, v15

    :goto_d6
    if-eqz v13, :cond_ee

    if-eq v13, v8, :cond_e7

    if-eq v13, v15, :cond_e0

    .line 265
    invoke-direct {v0, v1}, Lcom/android/server/McpsService;->doHelp(Ljava/io/PrintWriter;)V

    .line 266
    return v7

    .line 261
    :cond_e0
    invoke-static {v11}, Lcom/android/server/MCPSPolicy;->updateMCPSPolicyLevel(I)V

    .line 262
    invoke-static {}, Lcom/android/server/ConnectivityListener;->updateStatus()V

    .line 263
    return v7

    .line 258
    :cond_e7
    const-string/jumbo v7, "mcps_mode"

    invoke-virtual {v4, v7, v11}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    .line 259
    goto :goto_f5

    .line 255
    :cond_ee
    const-string/jumbo v7, "mcps_set_cluster_for_newflow"

    invoke-virtual {v4, v7, v11}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    .line 256
    nop

    .line 199
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "vstr":Ljava/lang/String;
    .end local v10    # "isStringArgSkipped":Z
    .end local v11    # "vint":I
    :goto_f5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .local v5, "i":I
    goto/16 :goto_d

    .line 270
    .end local v5    # "i":I
    :cond_f9
    invoke-virtual {v4}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v3

    .line 271
    invoke-direct {v0, v3, v7}, Lcom/android/server/McpsService;->updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V

    .line 273
    return v7
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/McpsService;->doDumpTitle(Ljava/io/PrintWriter;)V

    .line 148
    const-string v0, "------------------< Current Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/android/server/McpsService;->getCurrentPolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->toFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0}, Lcom/android/server/McpsDumpManager;->isUserBinary()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 153
    const-string v0, "------------------< Adb Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/android/server/McpsService;->getAdbPolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->toFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    const-string v0, "------------------< Base Policy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/android/server/McpsService;->getBasePolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->toFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    :cond_3b
    invoke-direct {p0, p1, p2}, Lcom/android/server/McpsService;->doDumpDriverStat(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/android/server/McpsService;->doDumpVersion(Ljava/io/PrintWriter;)V

    .line 162
    return-void
.end method

.method private doDumpDriverStat(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 180
    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0}, Lcom/android/server/McpsDumpManager;->isUserBinary()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/McpsDumpManager;->doDumpHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 182
    return-void

    .line 185
    :cond_e
    const-string v0, "------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "mcps_stat_distributed"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_distributed"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "mcps_stat_dropped"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_dropped"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "mcps_stat_enqueued"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_enqueued"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "mcps_stat_ignored"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_ignored"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "mcps_stat_processed"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_processed"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "mcps_stat_sauron_flow"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_sauron_flow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "mcps_stat_sauron_target_flow"

    const-string v1, "/sys/module/mcps/parameters/mcps_stat_sauron_target_flow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/McpsService;->printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/McpsDumpManager;->doDumpHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 194
    return-void
.end method

.method private doHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/McpsService;->doDumpTitle(Ljava/io/PrintWriter;)V

    .line 337
    new-instance v0, Lcom/android/server/McpsDumpManager;

    invoke-direct {v0}, Lcom/android/server/McpsDumpManager;-><init>()V

    .line 338
    .local v0, "mdm":Lcom/android/server/McpsDumpManager;
    invoke-virtual {v0, p1}, Lcom/android/server/McpsDumpManager;->doHelp(Ljava/io/PrintWriter;)V

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/server/McpsService;->doDumpVersion(Ljava/io/PrintWriter;)V

    .line 341
    return-void
.end method

.method private static filemultiread(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .line 696
    const-string v0, "Fail to close fr : "

    const-string v1, "Fail to close br : "

    const-string v2, ""

    .line 698
    .local v2, "out":Ljava/lang/String;
    const/4 v3, 0x0

    .line 699
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 700
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "MCPS-Service"

    if-nez v6, :cond_2f

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - no exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-object v2

    .line 707
    :cond_2f
    :try_start_2f
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 708
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 710
    :goto_3b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    .local v8, "line":Ljava/lang/String;
    if-eqz v6, :cond_58

    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_56} :catch_6b
    .catchall {:try_start_2f .. :try_end_56} :catchall_69

    move-object v2, v6

    goto :goto_3b

    .line 718
    .end local v8    # "line":Ljava/lang/String;
    :cond_58
    :try_start_58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v6

    .local v6, "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_60
    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v1    # "e2":Ljava/io/IOException;
    :goto_68
    return-object v2

    .line 718
    :catchall_69
    move-exception v6

    goto :goto_87

    .line 713
    :catch_6b
    move-exception v6

    .line 715
    .local v6, "e":Ljava/io/IOException;
    :try_start_6c
    const-string v8, "Fail to fileread : "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_69

    .line 716
    nop

    .line 718
    if-eqz v4, :cond_7c

    :try_start_74
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception v8

    .local v8, "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v8    # "e2":Ljava/io/IOException;
    :cond_7c
    :goto_7c
    if-eqz v3, :cond_86

    :try_start_7e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_86
    :goto_86
    return-object v2

    .line 718
    .end local v6    # "e":Ljava/io/IOException;
    :goto_87
    if-eqz v4, :cond_91

    :try_start_89
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v8

    .restart local v8    # "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v8    # "e2":Ljava/io/IOException;
    :cond_91
    :goto_91
    if-eqz v3, :cond_9b

    :try_start_93
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_9b
    :goto_9b
    throw v6
.end method

.method private static fileread(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "path"    # Ljava/lang/String;

    .line 670
    const-string v0, "Fail to close fr : "

    const-string v1, "Fail to close br : "

    const-string v2, ""

    .line 672
    .local v2, "out":Ljava/lang/String;
    const/4 v3, 0x0

    .line 673
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 674
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "MCPS-Service"

    if-nez v6, :cond_2f

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - no exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-object v2

    .line 681
    :cond_2f
    :try_start_2f
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 682
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 683
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3f} :catch_53
    .catchall {:try_start_2f .. :try_end_3f} :catchall_51

    move-object v2, v6

    .line 689
    :try_start_40
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v6

    .local v6, "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v1    # "e2":Ljava/io/IOException;
    :goto_50
    return-object v2

    .line 689
    :catchall_51
    move-exception v6

    goto :goto_6f

    .line 684
    :catch_53
    move-exception v6

    .line 686
    .local v6, "e":Ljava/io/IOException;
    :try_start_54
    const-string v8, "Fail to fileread : "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_51

    .line 687
    nop

    .line 689
    if-eqz v4, :cond_64

    :try_start_5c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v8

    .local v8, "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v8    # "e2":Ljava/io/IOException;
    :cond_64
    :goto_64
    if-eqz v3, :cond_6e

    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_6e
    :goto_6e
    return-object v2

    .line 689
    .end local v6    # "e":Ljava/io/IOException;
    :goto_6f
    if-eqz v4, :cond_79

    :try_start_71
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v8

    .restart local v8    # "e2":Ljava/io/IOException;
    invoke-static {v7, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v8    # "e2":Ljava/io/IOException;
    :cond_79
    :goto_79
    if-eqz v3, :cond_83

    :try_start_7b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_83
    :goto_83
    throw v6
.end method

.method private static filewrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 649
    const-string v0, "Fail to close fos : "

    const/4 v1, 0x0

    .line 650
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "MCPS-Service"

    if-nez v3, :cond_33

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filewrite : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - no exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v4

    .line 657
    :cond_33
    :try_start_33
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 658
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_40} :catch_4c
    .catchall {:try_start_33 .. :try_end_40} :catchall_4a

    .line 664
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v3

    .local v3, "e2":Ljava/io/IOException;
    invoke-static {v5, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v3    # "e2":Ljava/io/IOException;
    :goto_48
    const/4 v0, 0x1

    return v0

    .line 664
    :catchall_4a
    move-exception v3

    goto :goto_5e

    .line 659
    :catch_4c
    move-exception v3

    .line 661
    .local v3, "e":Ljava/io/IOException;
    :try_start_4d
    const-string v6, "Fail to filewrite : "

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_4a

    .line 662
    nop

    .line 664
    if-eqz v1, :cond_5d

    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v6

    .local v6, "e2":Ljava/io/IOException;
    invoke-static {v5, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    .end local v6    # "e2":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    return v4

    .line 664
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5e
    if-eqz v1, :cond_68

    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception v4

    .local v4, "e2":Ljava/io/IOException;
    invoke-static {v5, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v4    # "e2":Ljava/io/IOException;
    :cond_68
    :goto_68
    throw v3
.end method

.method private freeMCPSServiceLocked()V
    .registers 3

    .line 371
    const-string/jumbo v0, "init.svc.mcps-daemon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 372
    const-string v0, "MCPS-Service"

    const-string/jumbo v1, "stop mcps-daemon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "ctl.stop"

    const-string/jumbo v1, "mcps-daemon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "ctl.start"

    const-string/jumbo v1, "mcpsreset"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_28
    iget-object v0, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    if-eqz v0, :cond_32

    .line 378
    invoke-virtual {v0}, Lcom/android/server/ConnectivityListener;->unregister()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    .line 387
    :cond_32
    invoke-static {}, Lcom/android/server/ConnectivityListener;->free()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    .line 390
    return-void
.end method

.method private getAdbPolicy()Lcom/android/server/MCPSPolicy;
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 557
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getBasePolicy()Lcom/android/server/MCPSPolicy;
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    iget-object v1, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 551
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getCurrentPolicy()Lcom/android/server/MCPSPolicy;
    .registers 4

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "curPolicy":Lcom/android/server/MCPSPolicy;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v1

    .line 572
    .local v1, "defaultPolicy":Lcom/android/server/MCPSPolicy;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/McpsService;->cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 574
    return-object v0
.end method

.method public static hex2dec(Ljava/lang/String;)I
    .registers 5
    .param p0, "v"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, "dec":I
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1a} :catch_1c

    move v0, v1

    .line 294
    goto :goto_25

    .line 292
    :catch_1c
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MCPS-Service"

    const-string/jumbo v3, "hex2dec : fail : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_25
    return v0
.end method

.method private initMCPSServiceLocked()V
    .registers 4

    .line 354
    const-string/jumbo v0, "init.svc.mcps-daemon"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 355
    const-string v0, "MCPS-Service"

    const-string/jumbo v1, "start mcps-daemon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "ctl.start"

    const-string/jumbo v1, "mcps-daemon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_20
    iget-object v0, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/ConnectivityListener;->unregister()V

    .line 360
    :cond_27
    new-instance v0, Lcom/android/server/ConnectivityListener;

    invoke-virtual {p0}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityListener;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/McpsService;->mMobileCmListener:Lcom/android/server/ConnectivityListener;

    .line 361
    invoke-virtual {v0}, Lcom/android/server/ConnectivityListener;->register()V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    .line 368
    return-void
.end method

.method public static isAvailable()Z
    .registers 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method private isMCPSServiceInitializedLocked()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/android/server/McpsService;->mInitToggle:Z

    return v0
.end method

.method private isSpecialPurposeIPAddress(Ljava/net/InetAddress;)Z
    .registers 7
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 752
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 753
    return v0

    .line 756
    :cond_4
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 757
    return v0

    .line 761
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_30

    .line 762
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 765
    .local v2, "addrBytes":[B
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, -0x40

    aput-byte v4, v3, v1

    aput-byte v1, v3, v0

    const/4 v4, 0x2

    aput-byte v1, v3, v4

    const/4 v4, 0x3

    aput-byte v1, v3, v4

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/McpsService;->isSubnet(Ljava/net/InetAddress;ILjava/net/InetAddress;)Z

    move-result v3
    :try_end_2d
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_2d} :catch_31

    if-eqz v3, :cond_30

    .line 766
    return v0

    .line 771
    .end local v2    # "addrBytes":[B
    :cond_30
    goto :goto_3b

    .line 769
    :catch_31
    move-exception v0

    .line 770
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MCPS-Service"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_3b
    return v1
.end method

.method private isSubnet(Ljava/net/InetAddress;ILjava/net/InetAddress;)Z
    .registers 12
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "range"    # I
    .param p3, "target"    # Ljava/net/InetAddress;

    .line 727
    move v0, p2

    .line 728
    .local v0, "cidr":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 729
    .local v1, "ipBytes":[B
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 731
    .local v2, "targetByte":[B
    array-length v3, v1

    array-length v4, v2

    const/4 v5, 0x0

    if-eq v3, v4, :cond_f

    .line 732
    return v5

    .line 735
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2f

    .line 736
    const/16 v4, 0x8

    if-lt v0, v4, :cond_1f

    .line 737
    aget-byte v4, v1, v3

    aget-byte v6, v2, v3

    if-eq v4, v6, :cond_2a

    .line 738
    return v5

    .line 741
    :cond_1f
    aget-byte v4, v1, v3

    aget-byte v7, v2, v3

    xor-int/2addr v4, v7

    .line 742
    .local v4, "ret":I
    rsub-int/lit8 v7, v0, 0x8

    shl-int/2addr v6, v7

    if-lt v4, v6, :cond_2a

    .line 743
    return v5

    .line 746
    .end local v4    # "ret":I
    :cond_2a
    add-int/lit8 v0, v0, -0x8

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 748
    .end local v3    # "i":I
    :cond_2f
    return v6
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 3
    .param p0, "v"    # Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "ret":I
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 319
    goto :goto_9

    .line 316
    :catch_7
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .line 320
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_9
    return v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "v"    # Ljava/lang/String;

    .line 324
    const-wide/16 v0, 0x0

    .line 326
    .local v0, "ret":J
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_8

    move-wide v0, v2

    .line 330
    goto :goto_b

    .line 327
    :catch_8
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v0, -0x1

    .line 331
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_b
    return-wide v0
.end method

.method private printDriverStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/McpsService;->filemultiread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method private updateAdbPolicy(Lcom/android/server/MCPSPolicy;Z)V
    .registers 5
    .param p1, "policy"    # Lcom/android/server/MCPSPolicy;
    .param p2, "reset"    # Z

    .line 512
    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    if-eqz p2, :cond_13

    .line 514
    :try_start_5
    new-instance v1, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v1}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    goto :goto_1f

    .line 522
    :catchall_11
    move-exception v1

    goto :goto_24

    .line 516
    :cond_13
    if-nez p1, :cond_17

    .line 517
    monitor-exit v0

    return-void

    .line 520
    :cond_17
    iget-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/MCPSPolicy;->overwrite(Lcom/android/server/MCPSPolicy;)Lcom/android/server/MCPSPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    .line 522
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_11

    .line 524
    invoke-direct {p0}, Lcom/android/server/McpsService;->updateMCPSPolicy()V

    .line 525
    return-void

    .line 522
    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_11

    throw v1
.end method

.method private updateBasePolicy(Z)V
    .registers 5
    .param p1, "mobile"    # Z

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "newPolicy":Lcom/android/server/MCPSPolicy;
    if-eqz p1, :cond_9

    .line 482
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    goto :goto_e

    .line 489
    :cond_9
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/MCPSPolicy$Builder;->getTemplate(I)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 492
    :goto_e
    iget-object v1, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/McpsService;->getBasePolicy()Lcom/android/server/MCPSPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/MCPSPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 494
    monitor-exit v1

    return-void

    .line 496
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    .line 497
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_28

    .line 499
    invoke-direct {p0}, Lcom/android/server/McpsService;->updateMCPSPolicy()V

    .line 500
    return-void

    .line 497
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private declared-synchronized updateInterfaceAddress()V
    .registers 14

    monitor-enter p0

    .line 777
    const/16 v0, 0x8

    .line 778
    .local v0, "MAX_NUM_NETDEVICE":I
    :try_start_3
    const-string/jumbo v1, "rmnet"

    .line 781
    .local v1, "NETDEVICE_NAME":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/16 v3, 0x8

    if-ge v2, v3, :cond_3a

    .line 782
    const-string v3, "/sys/module/mcps/parameters/mcps_in6_addr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "@0:0:0:0:0:0:0:0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 783
    const-string v3, "/sys/module/mcps/parameters/mcps_in_addr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "@0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 786
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/McpsService;
    :cond_3a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2
    :try_end_3e
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3e} :catch_d5
    .catchall {:try_start_3 .. :try_end_3e} :catchall_d3

    .line 787
    .local v2, "ifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v2, :cond_42

    .line 788
    monitor-exit p0

    return-void

    .line 791
    .restart local p0    # "this":Lcom/android/server/McpsService;
    :cond_42
    :goto_42
    :try_start_42
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 792
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 793
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, "deviceName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_42

    const-string/jumbo v5, "rmnet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "rmnet"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_71

    .line 795
    goto :goto_42

    .line 798
    :cond_71
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    .line 799
    .local v5, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    if-nez v5, :cond_78

    .line 800
    goto :goto_42

    .line 803
    :cond_78
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InterfaceAddress;

    .line 804
    .local v7, "addr":Ljava/net/InterfaceAddress;
    invoke-virtual {v7}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 805
    .local v8, "inetAddr":Ljava/net/InetAddress;
    invoke-direct {p0, v8}, Lcom/android/server/McpsService;->isSpecialPurposeIPAddress(Ljava/net/InetAddress;)Z

    move-result v9

    if-eqz v9, :cond_93

    .line 806
    goto :goto_7c

    .line 809
    :cond_93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rmnet"

    const-string v11, ""

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 811
    .local v9, "output":Ljava/lang/String;
    instance-of v10, v8, Ljava/net/Inet6Address;

    if-eqz v10, :cond_c6

    .line 812
    const-string v10, "/sys/module/mcps/parameters/mcps_in6_addr"

    invoke-static {v10, v9}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_cf

    .line 813
    .end local p0    # "this":Lcom/android/server/McpsService;
    :cond_c6
    instance-of v10, v8, Ljava/net/Inet4Address;

    if-eqz v10, :cond_cf

    .line 814
    const-string v10, "/sys/module/mcps/parameters/mcps_in_addr"

    invoke-static {v10, v9}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_cf
    .catch Ljava/net/SocketException; {:try_start_42 .. :try_end_cf} :catch_d5
    .catchall {:try_start_42 .. :try_end_cf} :catchall_d3

    .line 816
    .end local v7    # "addr":Ljava/net/InterfaceAddress;
    .end local v8    # "inetAddr":Ljava/net/InetAddress;
    .end local v9    # "output":Ljava/lang/String;
    :cond_cf
    :goto_cf
    goto :goto_7c

    .line 817
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v5    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :cond_d0
    goto/16 :goto_42

    .line 820
    .end local v0    # "MAX_NUM_NETDEVICE":I
    .end local v1    # "NETDEVICE_NAME":Ljava/lang/String;
    .end local v2    # "ifs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_d2
    goto :goto_df

    .line 776
    :catchall_d3
    move-exception v0

    goto :goto_e1

    .line 818
    :catch_d5
    move-exception v0

    .line 819
    .local v0, "e":Ljava/net/SocketException;
    :try_start_d6
    const-string v1, "MCPS-Service"

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_d6 .. :try_end_df} :catchall_d3

    .line 821
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_df
    monitor-exit p0

    return-void

    .line 776
    :goto_e1
    monitor-exit p0

    throw v0
.end method

.method private updateMCPSPolicy()V
    .registers 6

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "newPolicy":Lcom/android/server/MCPSPolicy;
    iget-object v1, p0, Lcom/android/server/McpsService;->mKeyPolicy:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_4
    iget-object v2, p0, Lcom/android/server/McpsService;->mBasePolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v2}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v2

    .line 538
    .local v2, "basePolicy":Lcom/android/server/MCPSPolicy;
    iget-object v3, p0, Lcom/android/server/McpsService;->mAdbPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v3}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v3

    .line 539
    .local v3, "adbPolicy":Lcom/android/server/MCPSPolicy;
    invoke-virtual {v2, v3}, Lcom/android/server/MCPSPolicy;->overwrite(Lcom/android/server/MCPSPolicy;)Lcom/android/server/MCPSPolicy;

    move-result-object v4

    move-object v0, v4

    .line 540
    .end local v2    # "basePolicy":Lcom/android/server/MCPSPolicy;
    .end local v3    # "adbPolicy":Lcom/android/server/MCPSPolicy;
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1e

    .line 542
    if-nez v0, :cond_19

    .line 543
    return-void

    .line 545
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/McpsService;->cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;

    .line 546
    return-void

    .line 540
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V
    .registers 4
    .param p1, "helper"    # Lcom/android/server/McpsService$McpsDBHelper;

    .line 397
    if-nez p1, :cond_3

    .line 398
    return-void

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/android/server/McpsService;->mKeyMcpsModules:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/McpsService$McpsDBHelper;->isOnMcps()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 403
    invoke-direct {p0}, Lcom/android/server/McpsService;->isMCPSServiceInitializedLocked()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 404
    invoke-direct {p0}, Lcom/android/server/McpsService;->initMCPSServiceLocked()V

    goto :goto_1f

    .line 408
    :cond_16
    invoke-direct {p0}, Lcom/android/server/McpsService;->isMCPSServiceInitializedLocked()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 409
    invoke-direct {p0}, Lcom/android/server/McpsService;->freeMCPSServiceLocked()V

    .line 412
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static valid_hex(Ljava/lang/String;)Z
    .registers 3
    .param p0, "v"    # Ljava/lang/String;

    .line 279
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_14} :catch_17

    .line 283
    nop

    .line 285
    const/4 v0, 0x1

    return v0

    .line 280
    :catch_17
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;
    .registers 15
    .param p1, "policy"    # Lcom/android/server/MCPSPolicy;
    .param p2, "read"    # Z

    .line 592
    new-instance v0, Lcom/android/server/MCPSPolicy$Builder;

    invoke-direct {v0}, Lcom/android/server/MCPSPolicy$Builder;-><init>()V

    .line 594
    .local v0, "builder":Lcom/android/server/MCPSPolicy$Builder;
    invoke-virtual {p1}, Lcom/android/server/MCPSPolicy;->getStrings()Ljava/util/Map;

    move-result-object v1

    .line 595
    .local v1, "strings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 596
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 597
    goto :goto_11

    .line 600
    :cond_24
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 601
    .local v4, "v":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/MCPSPolicy;->getPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 602
    .local v5, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "rmnet%d"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 603
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7f

    .line 604
    if-eqz p2, :cond_4e

    .line 605
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 606
    .local v7, "out":Ljava/lang/String;
    invoke-virtual {v0, v3, v7}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    .line 607
    .end local v7    # "out":Ljava/lang/String;
    goto :goto_7c

    .line 608
    :cond_4e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 603
    :goto_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .end local v6    # "i":I
    :cond_7f
    goto :goto_9e

    .line 612
    :cond_80
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 613
    .local v7, "p":Ljava/lang/String;
    if-eqz p2, :cond_9a

    .line 614
    invoke-static {v7}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 615
    .local v8, "out":Ljava/lang/String;
    invoke-virtual {v0, v3, v8}, Lcom/android/server/MCPSPolicy$Builder;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/MCPSPolicy$Builder;

    .line 616
    .end local v8    # "out":Ljava/lang/String;
    goto :goto_9d

    .line 617
    :cond_9a
    invoke-static {v7, v4}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 619
    .end local v7    # "p":Ljava/lang/String;
    :goto_9d
    goto :goto_84

    .line 621
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/String;
    .end local v5    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9e
    :goto_9e
    goto/16 :goto_11

    .line 623
    :cond_a0
    invoke-virtual {p1}, Lcom/android/server/MCPSPolicy;->getInts()Ljava/util/Map;

    move-result-object v2

    .line 624
    .local v2, "ints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ac
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 625
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 626
    goto :goto_ac

    .line 629
    :cond_bf
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 630
    .local v5, "v":I
    invoke-static {v4, p2}, Lcom/android/server/MCPSPolicy;->getPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 631
    .local v6, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_100

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 632
    .local v8, "p":Ljava/lang/String;
    if-eqz p2, :cond_eb

    .line 633
    invoke-static {v8}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 634
    .local v9, "out":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/McpsService;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 635
    .local v10, "intout":I
    invoke-virtual {v0, v4, v10}, Lcom/android/server/MCPSPolicy$Builder;->setInt(Ljava/lang/String;I)Lcom/android/server/MCPSPolicy$Builder;

    .line 636
    .end local v9    # "out":Ljava/lang/String;
    .end local v10    # "intout":I
    goto :goto_ff

    .line 637
    :cond_eb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/McpsService;->filewrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 639
    .end local v8    # "p":Ljava/lang/String;
    :goto_ff
    goto :goto_d1

    .line 640
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "v":I
    .end local v6    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_100
    goto :goto_ac

    .line 642
    :cond_101
    if-eqz p2, :cond_108

    .line 643
    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy$Builder;->build()Lcom/android/server/MCPSPolicy;

    move-result-object v3

    return-object v3

    .line 645
    :cond_108
    return-object p1
.end method

.method public doDumpTitle(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 135
    const-string v0, "MCPS : Multi-Core Packet Scheduler"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public doDumpVersion(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 139
    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCPS Driver Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/McpsService;->mKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v0, "MCPS Service Version : 0.1.4.0v"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 99
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_39

    .line 100
    const-string v0, "/sys/module/mcps/version"

    invoke-static {v0}, Lcom/android/server/McpsService;->fileread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "kversion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/McpsService;->mKVersion:Ljava/lang/String;

    .line 103
    new-instance v1, Lcom/android/server/McpsDumpManager;

    invoke-direct {v1}, Lcom/android/server/McpsDumpManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/McpsService;->mMdm:Lcom/android/server/McpsDumpManager;

    .line 104
    new-instance v1, Lcom/android/server/McpsService$McpsDBHelper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/McpsService$McpsDBHelper;-><init>(Lcom/android/server/McpsService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/McpsService;->mHelper:Lcom/android/server/McpsService$McpsDBHelper;

    .line 106
    invoke-static {p0}, Lcom/android/server/MCPSPolicy;->onBootPhase(Lcom/android/server/McpsService;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/McpsService;->mHelper:Lcom/android/server/McpsService$McpsDBHelper;

    invoke-direct {p0, v1}, Lcom/android/server/McpsService;->updateSystemSettings(Lcom/android/server/McpsService$McpsDBHelper;)V

    .line 110
    .end local v0    # "kversion":Ljava/lang/String;
    :cond_39
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/server/McpsService;->mRemoteService:Landroid/os/Binder;

    const-string/jumbo v1, "mcps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/McpsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 93
    const-class v0, Lcom/android/server/McpsServiceInternal;

    new-instance v1, Lcom/android/server/McpsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/McpsService$LocalService;-><init>(Lcom/android/server/McpsService;Lcom/android/server/McpsService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/McpsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 94
    return-void
.end method
