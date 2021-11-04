.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStackSupervisor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;ZZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$removeRecentPairTask$3$ActivityStackSupervisor(ZZLjava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method
