.class Lcom/android/deskclock/SnoozeLengthDialog$1;
.super Ljava/lang/Object;
.source "SnoozeLengthDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/SnoozeLengthDialog;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/SnoozeLengthDialog;


# direct methods
.method constructor <init>(Lcom/android/deskclock/SnoozeLengthDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/deskclock/SnoozeLengthDialog$1;->this$0:Lcom/android/deskclock/SnoozeLengthDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/deskclock/SnoozeLengthDialog$1;->this$0:Lcom/android/deskclock/SnoozeLengthDialog;

    #calls: Lcom/android/deskclock/SnoozeLengthDialog;->updateDays()V
    invoke-static {v0}, Lcom/android/deskclock/SnoozeLengthDialog;->access$000(Lcom/android/deskclock/SnoozeLengthDialog;)V

    .line 52
    return-void
.end method
