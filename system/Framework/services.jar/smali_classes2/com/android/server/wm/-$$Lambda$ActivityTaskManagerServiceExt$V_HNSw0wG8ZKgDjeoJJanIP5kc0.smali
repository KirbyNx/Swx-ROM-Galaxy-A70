.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$V_HNSw0wG8ZKgDjeoJJanIP5kc0;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$moveAppLockedTaskToBackOnOtherDisplay$6$ActivityTaskManagerServiceExt(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
