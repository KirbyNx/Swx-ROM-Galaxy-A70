.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserManagerService$DTMR6kV4YBYA42tHZyxqNFp8bvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$DTMR6kV4YBYA42tHZyxqNFp8bvE;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$DTMR6kV4YBYA42tHZyxqNFp8bvE;->f$0:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->lambda$createUserInternalUncheckedNoTracing$2(ILcom/android/server/SdpManagerService;)V

    return-void
.end method
