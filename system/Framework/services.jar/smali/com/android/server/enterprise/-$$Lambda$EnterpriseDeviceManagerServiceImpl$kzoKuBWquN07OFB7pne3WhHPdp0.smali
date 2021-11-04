.class public final synthetic Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$kzoKuBWquN07OFB7pne3WhHPdp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$kzoKuBWquN07OFB7pne3WhHPdp0;->f$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$kzoKuBWquN07OFB7pne3WhHPdp0;->f$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->lambda$startDeferredServicesIfNeeded$1$EnterpriseDeviceManagerServiceImpl()V

    return-void
.end method
