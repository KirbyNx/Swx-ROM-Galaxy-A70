.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$durz_3owaryPR0_rLN2JaPj7lq8;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$moveAppLockedTaskToBackOnOtherDisplay$7$ActivityTaskManagerServiceExt(Ljava/util/ArrayList;)V

    return-void
.end method
