.class final Landroid/os/epic/EpicManagerService$BinderService;
.super Landroid/os/epic/IEpicManager$Stub;
.source "EpicManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/epic/EpicManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/epic/EpicManagerService;


# direct methods
.method private constructor <init>(Landroid/os/epic/EpicManagerService;)V
    .registers 2

    .line 57
    iput-object p1, p0, Landroid/os/epic/EpicManagerService$BinderService;->this$0:Landroid/os/epic/EpicManagerService;

    invoke-direct {p0}, Landroid/os/epic/IEpicManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/epic/EpicManagerService;Landroid/os/epic/EpicManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/epic/EpicManagerService;
    .param p2, "x1"    # Landroid/os/epic/EpicManagerService$1;

    .line 57
    invoke-direct {p0, p1}, Landroid/os/epic/EpicManagerService$BinderService;-><init>(Landroid/os/epic/EpicManagerService;)V

    return-void
.end method


# virtual methods
.method public Create(I)Landroid/os/epic/IEpicObject;
    .registers 3
    .param p1, "scenario_id"    # I

    .line 62
    new-instance v0, Landroid/os/epic/EpicObject;

    invoke-direct {v0, p1}, Landroid/os/epic/EpicObject;-><init>(I)V

    return-object v0
.end method

.method public Creates([I)Landroid/os/epic/IEpicObject;
    .registers 3
    .param p1, "scenario_id_list"    # [I

    .line 68
    new-instance v0, Landroid/os/epic/EpicObject;

    invoke-direct {v0, p1}, Landroid/os/epic/EpicObject;-><init>([I)V

    return-object v0
.end method
