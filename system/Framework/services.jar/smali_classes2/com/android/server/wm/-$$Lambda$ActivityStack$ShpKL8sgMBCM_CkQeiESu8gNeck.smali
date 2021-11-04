.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;->f$0:Lcom/android/server/wm/ActivityStack;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;->f$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$ShpKL8sgMBCM_CkQeiESu8gNeck;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->lambda$switchUser$1$ActivityStack(Ljava/util/ArrayList;)V

    return-void
.end method
