.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$XXBUgTPCX-7_lD5KjKegB8FWIW0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$checkPolicyBeforeDispatching$4$PhoneWindowManagerExt(I)V

    return-void
.end method
