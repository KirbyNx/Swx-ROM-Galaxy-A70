.class public Lcom/samsung/android/knox/analytics/database/Contract$Events$Projection;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Projection"
.end annotation


# static fields
.field public static final CHUNK_SIZE_ONLY_PLAIN_EVENTS:Ljava/lang/String; = "chunkSizePlainEvents"

.field public static final COUNT_ONLY:Ljava/lang/String; = "count"

.field public static final LAST_EVENT_ID_ONLY:Ljava/lang/String; = "lastEventId"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
