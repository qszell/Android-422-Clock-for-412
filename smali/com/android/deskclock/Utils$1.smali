.class final Lcom/android/deskclock/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/Utils;->loadCitiesDataBase(Landroid/content/Context;)[Lcom/android/deskclock/worldclock/CityObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/deskclock/worldclock/CityObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/deskclock/Utils$1;->val$collator:Ljava/text/Collator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I
    .locals 3
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/deskclock/Utils$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/deskclock/worldclock/CityObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 444
    check-cast p1, Lcom/android/deskclock/worldclock/CityObj;

    .end local p1
    check-cast p2, Lcom/android/deskclock/worldclock/CityObj;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/Utils$1;->compare(Lcom/android/deskclock/worldclock/CityObj;Lcom/android/deskclock/worldclock/CityObj;)I

    move-result v0

    return v0
.end method
