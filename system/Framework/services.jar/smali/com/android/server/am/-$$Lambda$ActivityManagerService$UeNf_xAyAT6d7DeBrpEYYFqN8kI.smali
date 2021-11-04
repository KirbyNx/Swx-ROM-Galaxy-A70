.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$UeNf_xAyAT6d7DeBrpEYYFqN8kI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$UeNf_xAyAT6d7DeBrpEYYFqN8kI;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final onLimitReached(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$UeNf_xAyAT6d7DeBrpEYYFqN8kI;->f$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$systemReady$4$ActivityManagerService(I)V

    return-void
.end method
