.class Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExclusiveTask"
.end annotation


# instance fields
.field manipulatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 2

    .line 674
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
    .param p2, "x1"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    .line 674
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 674
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 674
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;

    return-object p1
.end method
