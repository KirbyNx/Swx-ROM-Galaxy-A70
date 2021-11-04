.class public final Lcom/samsung/android/knox/analytics/database/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;,
        Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;,
        Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;,
        Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;,
        Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;,
        Lcom/samsung/android/knox/analytics/database/Contract$Versioning;,
        Lcom/samsung/android/knox/analytics/database/Contract$CompressedEvents;,
        Lcom/samsung/android/knox/analytics/database/Contract$SyntheticKey;,
        Lcom/samsung/android/knox/analytics/database/Contract$Events;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.knox.analytics.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SIZE:[Ljava/lang/String;

.field public static final SIZE:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 7
    const-string v0, "content://com.samsung.android.knox.analytics.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->DEFAULT_SIZE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
