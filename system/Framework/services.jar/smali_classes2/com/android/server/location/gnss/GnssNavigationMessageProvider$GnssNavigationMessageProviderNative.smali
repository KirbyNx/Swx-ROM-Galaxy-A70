.class public Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;
.super Ljava/lang/Object;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssNavigationMessageProviderNative"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNavigationMessageSupported()Z
    .registers 2

    .line 149
    # invokes: Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->native_is_navigation_message_supported()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public startNavigationMessageCollection()Z
    .registers 2

    .line 153
    # invokes: Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->native_start_navigation_message_collection()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->access$100()Z

    move-result v0

    return v0
.end method

.method public stopNavigationMessageCollection()Z
    .registers 2

    .line 157
    # invokes: Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->native_stop_navigation_message_collection()Z
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->access$200()Z

    move-result v0

    return v0
.end method
