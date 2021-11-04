.class public Lcom/samsung/android/knox/analytics/database/Contract$Versioning;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Versioning"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/Contract$Versioning$Field;
    }
.end annotation


# static fields
.field public static final AUX_FIELD_EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final METHOD_NOTIFY_VERSIONING_COMPLETED:Ljava/lang/String; = "notifyVersioningCompleted"

.field public static final PATH:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "version"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
