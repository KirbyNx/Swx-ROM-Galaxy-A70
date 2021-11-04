.class Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEngineDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
    }
.end annotation


# instance fields
.field private final MAX_RETRY:I

.field private final TO_READ:I

.field private final TO_WRITE:I

.field private mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

.field private mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .registers 3

    .line 2044
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 2042
    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    .line 2077
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->TO_READ:I

    .line 2078
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->TO_WRITE:I

    .line 2079
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->MAX_RETRY:I

    .line 2045
    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    .line 2046
    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    .line 2047
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .line 2040
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2040
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 2040
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2040
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .param p1, "x1"    # I

    .line 2040
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 2040
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3
    .param p1, "id"    # I

    .line 2074
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$2300(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2062
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->access$2200(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2063
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2064
    return-object v1

    .line 2066
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_19

    .line 2067
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "getEngineListLocked :: no engine found"

    invoke-static {v2, v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    return-object v1

    .line 2070
    :cond_19
    return-object v0
.end method

.method private removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2058
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 2059
    return-void
.end method

.method private storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 3
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2054
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->access$2000(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method private updateEngineListLocked()I
    .registers 2

    .line 2050
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->access$1900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I

    move-result v0

    return v0
.end method
