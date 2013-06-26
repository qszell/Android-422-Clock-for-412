.class Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter$7;->this$1:Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;

    #calls: Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->doLongClick(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;->access$1000(Lcom/android/deskclock/AlarmClock$AlarmItemAdapter;Landroid/view/View;)Z

    .line 744
    return-void
.end method
