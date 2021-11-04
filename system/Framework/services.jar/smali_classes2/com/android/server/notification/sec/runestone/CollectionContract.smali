.class public Lcom/android/server/notification/sec/runestone/CollectionContract;
.super Ljava/lang/Object;
.source "CollectionContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/sec/runestone/CollectionContract$API;,
        Lcom/android/server/notification/sec/runestone/CollectionContract$Notification;,
        Lcom/android/server/notification/sec/runestone/CollectionContract$Common;,
        Lcom/android/server/notification/sec/runestone/CollectionContract$Method;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.rubin.collection"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "content://com.samsung.android.rubin.collection/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/sec/runestone/CollectionContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
