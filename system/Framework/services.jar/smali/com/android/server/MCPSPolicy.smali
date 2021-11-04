.class Lcom/android/server/MCPSPolicy;
.super Ljava/lang/Object;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MCPSPolicy$Builder;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x3

.field public static final BIG:I = 0x2

.field public static final INT_MCPS_ENABLE:Ljava/lang/String; = "mcps_enable"

.field public static final INT_MCPS_MODE:Ljava/lang/String; = "mcps_mode"

.field public static final INT_NW_FL_CLUSTER:Ljava/lang/String; = "mcps_set_cluster_for_newflow"

.field public static final LEVEL_DEFAULT:I = 0x1

.field public static final LEVEL_HIGH:I = 0x0

.field public static final LEVEL_LOW:I = 0x2

.field public static final LEVEL_MID:I = 0x1

.field public static final LEVEL_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.mcps_level"

.field public static final LIT:I = 0x1

.field public static final MASK_RMNET_RPS:Ljava/lang/String; = "rmnet%d"

.field public static final NON:I

.field private static final defaultPolicy:Lcom/android/server/MCPSPolicy;

.field private static final mobileHighPolicy:Lcom/android/server/MCPSPolicy;

.field private static final mobileLowPolicy:Lcom/android/server/MCPSPolicy;

.field private static final mobileMidPolicy:Lcom/android/server/MCPSPolicy;

.field private static onBootPolicy:Lcom/android/server/MCPSPolicy;


# instance fields
.field private mInts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1220
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/MCPSPolicy;->onBootPolicy:Lcom/android/server/MCPSPolicy;

    .line 1226
    new-instance v0, Lcom/android/server/MCPSPolicy;

    const-string v1, "06"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;

    .line 1227
    new-instance v0, Lcom/android/server/MCPSPolicy;

    const-string v1, "0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->mobileHighPolicy:Lcom/android/server/MCPSPolicy;

    .line 1228
    new-instance v0, Lcom/android/server/MCPSPolicy;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->mobileMidPolicy:Lcom/android/server/MCPSPolicy;

    .line 1229
    new-instance v0, Lcom/android/server/MCPSPolicy;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->mobileLowPolicy:Lcom/android/server/MCPSPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    .line 999
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MCPSPolicy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/MCPSPolicy$1;

    .line 971
    invoke-direct {p0}, Lcom/android/server/MCPSPolicy;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 8
    .param p1, "rmnet"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "nwflow"    # I
    .param p4, "enable"    # I

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    .line 1002
    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string/jumbo v1, "rmnet%d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mcps_mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mcps_set_cluster_for_newflow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mcps_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/MCPSPolicy;
    .registers 1

    .line 971
    sget-object v0, Lcom/android/server/MCPSPolicy;->mobileHighPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/MCPSPolicy;
    .registers 1

    .line 971
    sget-object v0, Lcom/android/server/MCPSPolicy;->mobileMidPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/MCPSPolicy;
    .registers 1

    .line 971
    sget-object v0, Lcom/android/server/MCPSPolicy;->mobileLowPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/MCPSPolicy;
    .registers 1

    .line 971
    sget-object v0, Lcom/android/server/MCPSPolicy;->onBootPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/server/MCPSPolicy;
    .registers 1

    .line 971
    sget-object v0, Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MCPSPolicy;

    .line 971
    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MCPSPolicy;

    .line 971
    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    return-object v0
.end method

.method private static getIFPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 9
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_60

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/MCPSPolicy;->isExistFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1150
    goto :goto_60

    .line 1152
    :cond_26
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_27
    if-ge v3, v2, :cond_5d

    .line 1153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/queues/rx-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/rps_cpus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1154
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/MCPSPolicy;->isExistFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 1155
    goto :goto_5d

    .line 1157
    :cond_4f
    if-eqz p1, :cond_55

    .line 1158
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1160
    :cond_55
    const-string v6, "/sys/module/mcps/parameters/mcps_rps_config"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    .end local v5    # "path":Ljava/lang/String;
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1148
    .end local v3    # "j":I
    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1164
    .end local v1    # "i":I
    :cond_60
    :goto_60
    return-object v0
.end method

.method public static getPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "read"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_64

    :cond_f
    goto :goto_3c

    :sswitch_10
    const-string/jumbo v1, "rmnet%d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_3d

    :sswitch_1b
    const-string/jumbo v1, "mcps_set_cluster_for_newflow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_3d

    :sswitch_26
    const-string/jumbo v1, "mcps_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_3d

    :sswitch_31
    const-string/jumbo v1, "mcps_enable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_3d

    :goto_3c
    const/4 v1, -0x1

    :goto_3d
    if-eqz v1, :cond_5b

    if-eq v1, v4, :cond_46

    if-eq v1, v3, :cond_46

    if-eq v1, v2, :cond_46

    goto :goto_63

    .line 1193
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/module/mcps/parameters/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    goto :goto_63

    .line 1188
    :cond_5b
    const-string/jumbo v1, "rmnet"

    invoke-static {v1, p1}, Lcom/android/server/MCPSPolicy;->getIFPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1189
    nop

    .line 1199
    :goto_63
    return-object v0

    :sswitch_data_64
    .sparse-switch
        -0x461c4997 -> :sswitch_31
        0x3b9ccc09 -> :sswitch_26
        0x47eb5b10 -> :sswitch_1b
        0x4ec459e1 -> :sswitch_10
    .end sparse-switch
.end method

.method private static isExistFile(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 1168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isSkipOnReleaseBinary(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public static onBootPhase(Lcom/android/server/McpsService;)V
    .registers 3
    .param p0, "service"    # Lcom/android/server/McpsService;

    .line 1223
    sget-object v0, Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;

    invoke-virtual {v0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/McpsService;->cmd(Lcom/android/server/MCPSPolicy;Z)Lcom/android/server/MCPSPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/MCPSPolicy;->onBootPolicy:Lcom/android/server/MCPSPolicy;

    .line 1224
    return-void
.end method

.method public static updateMCPSPolicyLevel(I)V
    .registers 3
    .param p0, "level"    # I

    .line 979
    if-ltz p0, :cond_1e

    const/4 v0, 0x2

    if-ge v0, p0, :cond_6

    goto :goto_1e

    .line 982
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.mcps_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    return-void

    .line 980
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public duplicate()Lcom/android/server/MCPSPolicy;
    .registers 4

    .line 1203
    new-instance v0, Lcom/android/server/MCPSPolicy;

    invoke-direct {v0}, Lcom/android/server/MCPSPolicy;-><init>()V

    .line 1204
    .local v0, "policy":Lcom/android/server/MCPSPolicy;
    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1205
    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1206
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1014
    instance-of v0, p1, Lcom/android/server/MCPSPolicy;

    if-nez v0, :cond_6

    .line 1015
    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/MCPSPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInts()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1026
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getStrings()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1022
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public overwrite(Lcom/android/server/MCPSPolicy;)Lcom/android/server/MCPSPolicy;
    .registers 5
    .param p1, "policy"    # Lcom/android/server/MCPSPolicy;

    .line 1210
    if-nez p1, :cond_7

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0

    .line 1213
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    .line 1214
    .local v0, "temp":Lcom/android/server/MCPSPolicy;
    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1215
    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1217
    return-object v0
.end method

.method public toFormatString()Ljava/lang/String;
    .registers 8

    .line 1048
    const-string v0, ""

    .line 1049
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    const-string v4, ":"

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1050
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1051
    goto :goto_c

    .line 1053
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_c

    .line 1055
    :cond_44
    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1056
    .restart local v2    # "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1057
    goto :goto_4e

    .line 1059
    :cond_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_4e

    .line 1061
    :cond_80
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1031
    const-string v0, ""

    .line 1032
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "|"

    const-string v4, ":"

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1033
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1034
    goto :goto_c

    .line 1036
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_c

    .line 1038
    :cond_45
    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1039
    .restart local v2    # "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1040
    goto :goto_4f

    .line 1042
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_4f

    .line 1044
    :cond_81
    return-object v0
.end method
