.class final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 787
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "x1"    # Lcom/android/server/dreams/DreamManagerService$1;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public getActiveDreamComponent(Z)Landroid/content/ComponentName;
    .registers 3
    .param p1, "doze"    # Z

    .line 805
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->getActiveDreamComponentInternal(Z)Landroid/content/ComponentName;
    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2500(Lcom/android/server/dreams/DreamManagerService;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isDreaming()Z
    .registers 2

    .line 800
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$1400(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v0

    return v0
.end method

.method public startDream(Z)V
    .registers 3
    .param p1, "doze"    # Z

    .line 790
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2300(Lcom/android/server/dreams/DreamManagerService;Z)V

    .line 791
    return-void
.end method

.method public stopDream(Z)V
    .registers 4
    .param p1, "immediate"    # Z

    .line 795
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v1, "requested stopDream"

    # invokes: Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(ZLjava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->access$2400(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    .line 796
    return-void
.end method
