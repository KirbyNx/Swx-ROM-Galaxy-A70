.class public final synthetic Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PolicyImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PolicyImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;->f$0:Lcom/android/server/wm/PolicyImpl;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;->f$0:Lcom/android/server/wm/PolicyImpl;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$PolicyImpl$F77UI9z1H1jZ1IO1L-Q3R1CyW80;->f$1:I

    check-cast p1, Lcom/android/server/wm/PackageConfiguration;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/PolicyImpl;->lambda$propagateToCallbacks$5$PolicyImpl(ILcom/android/server/wm/PackageConfiguration;)V

    return-void
.end method
