.class public Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean$Extra;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extra"
.end annotation


# static fields
.field public static final DELETED_EVENTS_COUNT:Ljava/lang/String; = "deletedEventsCount"

.field public static final DELETED_SIZE_BYTES:Ljava/lang/String; = "deletedSizeBytes"

.field public static final TARGET_DB_SIZE:Ljava/lang/String; = "targetDbSize"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
