.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$p5SmoivVkKzYMV3H2AsbAWF97Oc;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->lambda$getTaskIdFromPackageName$4$MultiTaskingController(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
