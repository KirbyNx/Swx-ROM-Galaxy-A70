.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;IZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$A2ILv8te838csaPteW2t6eLEldk;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiTaskingController;->lambda$startUser$1$MultiTaskingController(IZZ)V

    return-void
.end method
