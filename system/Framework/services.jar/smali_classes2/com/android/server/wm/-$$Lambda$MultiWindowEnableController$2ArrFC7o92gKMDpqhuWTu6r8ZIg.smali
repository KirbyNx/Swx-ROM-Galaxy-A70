.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowEnableController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$2:Z

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$2:Z

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$3:I

    iget-boolean v4, p0, Lcom/android/server/wm/-$$Lambda$MultiWindowEnableController$2ArrFC7o92gKMDpqhuWTu6r8ZIg;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/MultiWindowEnableController;->lambda$setMultiWindowDynamicEnabled$1$MultiWindowEnableController(Ljava/lang/String;ZIZ)V

    return-void
.end method
