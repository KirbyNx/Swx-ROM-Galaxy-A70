.class Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;
.super Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;
.source "RemoteInjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .registers 2

    .line 940
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .param p2, "x1"    # Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    .line 940
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    return-void
.end method


# virtual methods
.method public isRemoteControlDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 943
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result v0

    return v0
.end method
