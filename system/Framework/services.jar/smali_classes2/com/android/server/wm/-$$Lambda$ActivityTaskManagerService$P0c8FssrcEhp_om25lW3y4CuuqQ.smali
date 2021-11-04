.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$P0c8FssrcEhp_om25lW3y4CuuqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$P0c8FssrcEhp_om25lW3y4CuuqQ;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$P0c8FssrcEhp_om25lW3y4CuuqQ;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$updateConfigurationLocked$9$ActivityTaskManagerService(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
