.class public final synthetic Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PolicyImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/wm/PolicyDataMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PolicyImpl;Ljava/util/List;Ljava/lang/String;ILcom/android/server/wm/PolicyDataMap;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$0:Lcom/android/server/wm/PolicyImpl;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$3:I

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$4:Lcom/android/server/wm/PolicyDataMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$0:Lcom/android/server/wm/PolicyImpl;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$3:I

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$SZVk_bV73q_s0DXkBLCFqLB3194;->f$4:Lcom/android/server/wm/PolicyDataMap;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/PolicyImpl;->lambda$propagateToCallbacks$4$PolicyImpl(Ljava/util/List;Ljava/lang/String;ILcom/android/server/wm/PolicyDataMap;)V

    return-void
.end method
