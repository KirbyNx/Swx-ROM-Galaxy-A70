.class public final synthetic Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;->f$0:Lcom/android/server/CountryDetectorService;

    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;->f$0:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v0, p1}, Lcom/android/server/CountryDetectorService;->lambda$initialize$2$CountryDetectorService(Landroid/location/Country;)V

    return-void
.end method
