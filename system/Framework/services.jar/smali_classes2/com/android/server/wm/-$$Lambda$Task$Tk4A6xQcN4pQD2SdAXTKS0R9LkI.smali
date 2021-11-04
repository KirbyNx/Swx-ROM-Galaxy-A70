.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;->f$0:Z

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;->f$1:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/Task;->lambda$getTopVisibleActivity$13(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
